
-- create list of forms
{% set forms = dbt_utils.get_column_values(table=ref('stg_core_questions_land_survey'), column='form_id') %}

-- create list of fields
{% set corefields = dbt_utils.get_column_values(table=ref('stg_core_questions_master'), column='name', where='is_land_survey=TRUE') %}


{% for form in forms %}
{% set schemaname = dbt_utils.get_column_values(table=ref('stg_core_questions_land_survey'), column='schemaname', where='is_land_survey=TRUE') %}
{% set tablename = dbt_utils.get_column_values(table=ref('stg_core_questions_master'), column='name', where='is_land_survey=TRUE') %}

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
        {% endif -%} 
        as {{core_field}}
        {%- if not loop.last -%}
        ,
        {%- endif -%}
    {% endfor %}
--find the appropriate table to join based on information in 'stg_core_questions_land_survey'
from 

{% if not loop.last %}
    union all
{% endif %}

{% endfor %}

-- for each form: 
    -- for each field in field list
    -- select field if exists, select NULL as field
    -- if not loop.last union all