---for form in forms

-- create this table
{% set questions_query %}
select 
    s.form_id, 
    sd.question_name, 
    cq.name as core_question_name,
    s.form_id_string
from {{ref('stg_survey_master')}} s
left join {{ref('stg_survey_definitions_master')}} sd  on s.form_id = sd.form_id and sd.core_question_id is not null
left join {{ref('stg_core_questions_master')}} cq on sd.core_question_id = cq.id
where s.type ='Land survey' --turn into argument
and s.form_id::int = 662617 -- to loop over
{% endset %}

{% set results = run_query(questions_query) %}

{% if execute %}
{% set form_id  = results.columns[0].values() %}
{% set question_name = results.columns[1].values() %}
{% set core_question_name = results.columns[2].values() %}
{% set form_id_name = results.columns[3].values() %} 

{% else %}
{% set results_list = [] %}
{% endif %}


    select 
    {{form_id[0]}} as form_id,
{%- for  i in range(0, form_id|length) %}
    {{question_name[i]}} as {{core_question_name[i]}}
    {%- if not loop.last -%}
      , 
    {%- endif %}
{%- endfor %}
    from airbyte.{{form_id_name[0]|lower}}



