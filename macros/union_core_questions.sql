{% macro union_core_questions(survey_type, repeat) %}   

-- create list of forms.   -- if 'rhomis' create list that are not in extended.rhomis . And either way, up to 5
{%- set query -%}
select form_id, schemaname, tablename from  {{ref('stg_core_questions_union')}}
where type = '{{survey_type}}'   
    {% if repeat|length > 0  -%}
    and repeat_group_name = '{{repeat}}'
    {% else -%}
    and repeat_group_name is null 
    {%- endif %}
group by 1,2,3
    {% if '{{survey_type}}' == 'Rhomis'  -%}  
    limit 5
    {% endif -%}
{%- endset -%}

-- create list of fields
{%- set corefields_query  -%}
    select name from {{ref('stg_core_questions_master')}} where is_{{survey_type | lower | replace(' ', '_')}}  
    {% if repeat|length > 0   -%}
        and repeat_group_name = '{{repeat}}'  
        {%- else -%}
        and repeat_group_name is null 
        {% endif -%}
{%- endset -%}

-- start actual macro 
{%- set results = run_query(query) -%}

{%- if execute -%}
    {% set forms = (results.select(['form_id']).columns[0].values()) | unique | list %}
    {% set corefields = run_query(corefields_query).columns[0].values() | list %} 
{%- else -%}
    {% set forms = [] %}
    {% set corefields = [] %}
{%- endif -%}
 
-- for each form
{% for form in forms %}
    --finds schemaname and tablename for the db table associated to the form
    {%- set schemalist = []  -%}
    {%- set tablelist = []  -%}
    {%- set uniquelist = []  -%}

    {%- for row in results -%}  
        {%- if row['form_id'] == form -%}
            {%- do schemalist.append(row['schemaname'])  -%}
            {%- do tablelist.append(row['tablename'])  -%}
        {%- endif -%}
    {%- endfor %}

    {%- set schemaname = schemalist[0] %}
    {%- set tablename = tablelist[0] %}

    {%- set fieldsquery -%}
        select * 
        from  {{schemaname}}."{{tablename}}" 
    {%- endset -%}

    {%- set fields = dbt_utils.get_query_results_as_dict(fieldsquery)  -%}
    {% set fields_query = run_query(fieldsquery).columns[0].values()|list -%} 
    
    {% if repeat|length > 0  -%}
        {%- if 'parent_index' in fields %}
            {%for val in fields['parent_index'] %}
                {%if val not in uniquelist%}
                    {%- do uniquelist.append(val)  -%}
                {%endif%}
            {%endfor%}
        {% else -%}
            {%for val in fields['parent_id'] %}
                {%if val not in uniquelist%}
                    {%- do uniquelist.append(val) -%}
                {%endif%}
            {%endfor%}
        {%endif%}
    {%else%}
        {%for val in fields['id'] %}
                {%if val not in uniquelist%}
                    {%- do uniquelist.append(val) -%}
                {%endif%}
        {%endfor%}
    {%endif%}  

    -- loop through all the core fields, select the field with the appropriate name if present

     {%- set formfields_query -%}
        select question_name, core_question_name
        from  {{ref('stg_core_questions_union')}} 
        where form_id = {{form}}
    {%- endset -%}

    {%- set question_names = run_query(formfields_query).columns[0].values() | list -%}
    {%- set core_questions_names = run_query(formfields_query).columns[1].values() | list -%} 

    {% if uniquelist| length >0%}
        {%for val in range(uniquelist| length) %}
            --loop through all the fields in dict
            select 
            {{form}}::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                {% if repeat|length > 0  -%}
                    id as id,  
                    {%- if 'parent_index' in fields %}
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    {% else -%}
                        {{uniquelist[loop.index0]}} as submission_id,                    
                        null::bigint as parent_index,
                    {%- endif %}
                {% else %}
                    id as submission_id,
                    -- if _index in the actual table, add index if not add null
                    {% if '_index' in fields %}
                        _index::int as submission_index,
                    {% else -%}
                        NULL::int as submission_index,
                    {%- endif %}
                {% endif %}
                -- loop through all the core fields, select the field with the appropriate name if present
                {% for core_field in corefields %}
                    {%- if core_field in core_questions_names %}
                    {%- set indexvalue = core_questions_names.index(core_field) -%} 
                        {# finds the item of the list that correspond to a rule #}
                    {{question_names[indexvalue]}}::varchar
                    {%- else %}
                    NULL::varchar 
                    {% endif %} 
                    as {{core_field}} 
                    {%- if not loop.last -%}
                    ,
                    {%- endif -%}
                    
                {% endfor %}
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                {% if execute -%}
                    {{schemaname}}."{{tablename}}"
                    {% if repeat|length > 0  -%}
                        {%- if 'parent_index' not in fields %}
                                where parent_id={{uniquelist[loop.index0]}}
                            {%else%}
                                where parent_index={{uniquelist[loop.index0]}}
                        {%- endif %}
                    {%else%}
                        where id= {{uniquelist[loop.index0]}}
                    {%endif%}
                    
                {%- endif -%}
                {% if not loop.last %}
                    union all
                {%- endif -%}
        {% endfor %} 
            
        {% if not loop.last %}
            union all
        {%- endif -%}
    {%- endif -%}
{%- endfor -%}
{% endmacro %}

-- Macro #2. Takes the unioned data but joins it back to the original survey definition table to get all relevant fields  
{% macro survey_type_table(survey_type, repeat=NULL) %} 

with core_questions as 
(
{{union_core_questions(survey_type, repeat)}}
)
select 
s.form_name,
s.type,
s.timing,
s.country,
s.project_code,
s.type_2,
cq.*
from {{ref('stg_survey_master')}} s 
left join core_questions cq on s.form_id::int = cq.form_id::int   
where s.type = '{{survey_type}}'

{% endmacro %}