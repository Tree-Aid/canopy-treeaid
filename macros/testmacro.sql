{% macro testmacro() %}

{% set query %}
select * from   {{ref('stg_core_questions_union')}}
where type = 'Enterprise survey'
    and repeat_group_name = 'derivatives'
{% endset %}

{{query}}

{% set results = run_query(query) -%}

{% set forms = (results.select(['form_id']).columns[0].values()) | unique | list %}

forms 

{# 
{% for form in forms %}

    {%- set schemaname = (results.select(['schemaname']).columns[0].values()  | list)[indexvalue] -%}
    {%- set tablename = (results.select(['tablename']).columns[0].values()  | list)[indexvalue] -%}
select * from 
    {{schemaname}}."{{tablename}}"

{% endfor %}
#}

{% endmacro %}