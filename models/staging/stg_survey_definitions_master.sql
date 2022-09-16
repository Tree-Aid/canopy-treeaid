select 
    id, 
    form_id::int, 
    question_name,
    question_type,
    question_label,
    NULLIF(regexp_replace(core_question_id, '\D','','g'), '')::numeric as core_question_id
--    REGEXP_REPLACE(core_question_id,'[[:alpha:]]','','g')::int as core_question_id
--    (regexp_replace(core_question_id, '[0-9]+\.?[0-9]*'))::int as core_question_id
from 
{{source('airbyte', 'survey_definitions')}}