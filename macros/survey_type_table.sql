-- Takes the unioned data but joins it back to the original survey definition table to get all relevant fields  
{% macro survey_type_table(survey_type, repeat=NULL) %} 

with core_questions as 
(
{% if repeat == NULL %}
{{union_core_questions(survey_type, repeat)}}

{% else %}     
{{union_core_questions_old(survey_type, repeat)}}
{% endif %}
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