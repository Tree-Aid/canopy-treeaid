select 
    id::int,
    name, 
    description, 
    is_rhomis::bool,
    is_land_survey::bool,
    is_enterprise_survey::bool,
    is_beneficiary_list::bool,
    case when repeat_group_name = '' then NULL::varchar else repeat_group_name end as repeat_group_name 
from {{source('airbyte', 'core_questions')}}