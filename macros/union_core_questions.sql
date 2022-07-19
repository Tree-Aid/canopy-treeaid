{% set query %}
select * from {{ref('stg_core_questions_land_survey')}} 
{% endset %}

{% set results = run_query(query) -%}

-- create list of forms
{% if execute %}
    {% set forms = (results.select(['form_id']).columns[0].values()) | unique | list %}
{% else %}
    {% set forms = [] %}
{% endif %}

-- create list of fields
{% set corefields = dbt_utils.get_column_values(table=ref('stg_core_questions_master'), column='name', where='is_land_survey=TRUE') %}

{% for form in forms %}


-- for each form, loop through all the core fields, select the field with the appropriate name if present
    select 
    {{form}} as form_id, 
    {%- set formfields_query -%}
    select question_name, core_question_name
    from {{ref('stg_core_questions_land_survey')}}
    where form_id = {{form}}
    {%- endset -%}

    {%- set question_names = run_query(formfields_query).columns[0].values() | list -%}
    {%- set core_questions_names = run_query(formfields_query).columns[1].values() | list -%}
   
    {% for core_field in corefields %}
        {%- if core_field in core_questions_names %}
        {%- set indexvalue = core_questions_names.index(core_field) -%} 
            {# finds the item of the list that correspond to a rule #}
        {{question_names[indexvalue]}}
        {%- else %}
        NULL 
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
