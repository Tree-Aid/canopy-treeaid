
---for form in forms

-- create this table
select 
    s.form_id, 
    sd.question_name, 
    cq.name as core_question_name
from {{ref('stg_survey_master')}} s
left join {{ref('stg_survey_definitions_master')}} sd  on s.form_id = sd.form_id and sd.core_question_id is not null
left join {{ref('stg_core_questions_master')}} cq on sd.core_question_id = cq.id
where s.type ='Land survey' --turn into argument
and s.form_id::int = 662617 -- to loop over
