select 
    id, 
    form_id, 
    question_name,
    question_type,
    question_label,
    core_question_id
from 
{{source('airbyte', 'survey_definitions')}}