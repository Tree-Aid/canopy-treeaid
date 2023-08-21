
  create view "tree_aid"."dbt_bokidi"."stg_core_questions_master__dbt_tmp"
    
    
  as (
    select 
    id::int,
    name, 
    description, 
    is_rhomis::bool,
    is_land_survey::bool,
    is_enterprise_survey::bool,
    is_beneficiary_list::bool,
    case when repeat_group_name = '' then NULL::varchar else repeat_group_name end as repeat_group_name 
from "tree_aid"."airbyte"."core_questions"
  );