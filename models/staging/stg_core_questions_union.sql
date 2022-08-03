-- creates a view of all the core questions for all surveys that have data in the database

select 
    s.form_id::int,
    pt.schemaname, 
    pt.tablename,
    sd.question_name, 
    cq.name as core_question_name,
    s.form_id_string,
    s.type,
    s.timing
from {{ref('stg_survey_master')}} s 
inner join pg_catalog.pg_tables pt on replace(lower(s.form_id_string), '-', '_') = lower(pt.tablename) 
    and pt.schemaname in ('onadata', 'temp') and pt.tableowner = 'tree_aid'
left join {{ref('stg_survey_definitions_master')}} sd  on s.form_id::int = sd.form_id::int and sd.core_question_id is not null
left join {{ref('stg_core_questions_master')}} cq on sd.core_question_id = cq.id


{# add conditions for different core questions that are in repeat groups #}

