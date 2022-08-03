{% macro union_core_questions(survey_type) %}   {#add a `repeat=NULL` parameter. IF not null, pass that to the forms list   #}

{% set query %}
select * from   {{ref('stg_core_questions_union')}}
where type = '{{survey_type}}'   {# add an if condition based on 'repeat' argument. If null, then 'repeat_group_name=NULL' else 'repeat_group_name=repeat' #}
{% endset %}

{% set results = run_query(query) -%}

-- create list of forms
{% if execute %}
    {% set forms = (results.select(['form_id']).columns[0].values()) | unique | list %}
{% else %}
    {% set forms = [] %}
{% endif %}

-- create list of fields
{% set corefields_query  %}
    select name from {{ref('stg_core_questions_master')}} where is_{{survey_type | lower | replace(' ', '_')}} 
    {# need to add a condition based on the 'repeat' argument. needs a different set of core fields #}
{% endset %}

{% if execute -%}
    {% set corefields = run_query(corefields_query).columns[0].values() | list %} 
{%- else -%}
    {% set corefields = [] %}
{%- endif -%}

{% for form in forms %}
-- for each form, loop through all the core fields, select the field with the appropriate name if present
    select 
    {{form}}::varchar as form_id, 
    id as submission_id, 
--    submission_time as submitted_at,
    {%- set formfields_query -%}
    select question_name, core_question_name
    from  {{ref('stg_core_questions_union')}} 
    where form_id = {{form}}
    {%- endset -%}

    {%- set question_names = run_query(formfields_query).columns[0].values() | list -%}
    {%- set core_questions_names = run_query(formfields_query).columns[1].values() | list -%}
   
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
        {%- set indexvalue = (results.select(['form_id']).columns[0].values()  | list).index(form) -%}
        {%- set schemaname = (results.select(['schemaname']).columns[0].values()  | list)[indexvalue] -%}
        {%- set tablename = (results.select(['tablename']).columns[0].values()  | list)[indexvalue] -%}
        {{schemaname}}.{{tablename}}
    {%- else -%}
        {% set forms = [] %}
        {% set schemaname = [] %}
        {% set tablename = [] %}
    {%- endif -%}
    {% if not loop.last %}
        union all
    {%- endif -%}

{%- endfor -%}
{% endmacro %}

-- Macro #2. Takes the unioned data but joins it back to the original survey definition table to get all relevant fields  
{% macro survey_type_table(survey_type) %} 
with core_questions as 
(
{{union_core_questions(survey_type)}}
)
select 
s.form_name,
s.type,
s.timing,
s.country,
s.project_code,
cq.*
from {{ref('stg_survey_master')}} s 
left join core_questions cq on s.form_id::int = cq.form_id::int 
where s.type = '{{survey_type}}'

{% endmacro %}


