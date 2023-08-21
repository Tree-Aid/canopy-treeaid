{#TODO: -- if 'rhomis' create list that are not in extended.rhomis . And either way, up to 5  #}

{# method: You can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).
Other reference documentation: https://jinja.palletsprojects.com/en/2.10.x/templates/#filters
https://agate.readthedocs.io/en/1.7.1/api/columns_and_rows.html
--source: https://stackoverflow.com/questions/63478564/dbt-macro-to-iterate-over-item-in-list-within-a-sql-call
run_query returns agate.Table (https://agate.readthedocs.io/en/1.6.1/api/table.html)

#}   

-- Returns a table of forms with their corresponding schema and table names.   
{% macro forms_location_table(survey_type, repeat=[]) %}   

{% set formtable  %}
select form_id, schemaname, tablename from  {{ref('stg_core_questions_union')}}
where type = '{{survey_type}}'   
    {% if repeat|length > 0  -%}
    and repeat_group_name = '{{repeat}}'
    {% else -%}
    and repeat_group_name is null 
    {%- endif %}
group by 1,2,3
{%- endset -%}

{%- set results = run_query(formtable)  -%}

{{return(results)}}

{% endmacro%}


--Returns a list of all the core-fields expected by a survey type, as specified in the 'core_questions_master'. 
{% macro find_corefields(survey_type, repeat = []) %}

{%- set corefields_query  -%}
    select name from {{ref('stg_core_questions_master')}} where is_{{survey_type | lower | replace(' ', '_')}}  
    {% if repeat|length > 0   -%}
        and repeat_group_name = '{{repeat}}'  
        {%- else -%}
        and repeat_group_name is null 
        {% endif -%}
{%- endset -%}

{% if execute %}
    {% set core_fields = run_query(corefields_query).columns['name'].values()  %} 
{% else %}
    {% set core_fields = [] %}
{% endif %}

{{return(core_fields)}}

{% endmacro %}


--find fields in the form
{% macro fields(schemaname, tablename) %}
    {%- set fieldsquery -%}
    select column_name from 
        information_schema.columns
        where table_schema = '{{schemaname}}'
    and table_name = '{{tablename}}'
    {%- endset -%}

    {%- set fields = dbt_utils.get_query_results_as_dict(fieldsquery)  -%}

    {{return(fields['column_name'])}}

{% endmacro %}

-- loop through all the core fields, select the field with the appropriate name if present
{% macro form_core_fields_names(form_id) %}

    {%- set formfields_query -%}
        select question_name, core_question_name
        from  {{ref('stg_core_questions_union')}} 
        where form_id = '{{form_id}}'
    {%- endset -%}


    {% if execute %}
        {%- set results =  dbt_utils.get_query_results_as_dict(formfields_query) -%}   
    {% else %}
        {% set results = [] %}
    {% endif %}

    {{ return(results) }}
    
{% endmacro %}

-- Returns a query unioning all the relevant forms for a surey type
-- For each forms, returns the list of core questions and, if any question is present, selects that question
{# TODO: work with repeats#}
{% macro union_core_questions(survey_type, repeat = []) %}

--find all the expected core fields for that form type    
{% set corefields = find_corefields(survey_type) %}

--For all forms for a selected survey type
{% for row in forms_location_table(survey_type) %}
{{ log("Starting analysis for form: " ~ row['form_id'], True) }}

--find all the fields for the table associated with the form
{%- set fields = fields(row['schemaname'], row['tablename'])  -%}

--find the core fields and how they are referenced in the specific form 
{%- set form_core_fields = form_core_fields_names(row['form_id']) -%}
{%- set form_question_names = form_core_fields['question_name'] | list -%}
{%- set core_question_names = form_core_fields['core_question_name'] | list -%}

--- final query 
select 
{{row['form_id']}}::varchar as form_id, 
    {% if '_id' in fields %} 
    _id::bigint as submission_id,
    {% else -%}
    id::bigint as submission_id,
    {%- endif %}
    -- if _index in the actual table, add index if not add null
    {% if '_index' in fields %}
    _index::int as submission_index,
    {% else -%}
    NULL::int as submission_index,
    {%- endif %}
-- loop through all the core fields, select the field with the appropriate name if present
{% for core_field in corefields %}
    {%- if core_field in core_question_names %}
        {%- set indexvalue = core_question_names.index(core_field) %} 
        {{form_question_names[indexvalue]}}::varchar    -- finds the item of the list that correspond to a rule 
    {%- else %}
        NULL::varchar 
    {%- endif %} 
        as {{core_field}} 
    {%- if not loop.last -%}
    ,
    {%- endif -%}    
{% endfor %}
-- appropriate from statement
    from {{row['schemaname']}}."{{row['tablename']}}"
{% if not loop.last %}
    union all
{%- endif -%}

{% endfor %}
{% endmacro %}


