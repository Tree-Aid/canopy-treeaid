select 
    id,
    name, 
    core_questions as description, 
    is_rhomis::bool,
    is_land_survey::bool,
    is_enterprise_survey::bool,
    is_beneficiary_list::bool
from {{source('airbyte', 'core_questions')}}