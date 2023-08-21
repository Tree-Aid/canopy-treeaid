
  create view "tree_aid"."dbt_bokidi"."stg_survey_master__dbt_tmp"
    
    
  as (
    select
    form_id::int , 
    form_id_string,
    form_name, 
    type,
    timing,
    country, 
    project_code,
    is_in_scope::bool, 
    case when is_with_with_data = 'No data' then false else is_with_with_data::bool end as is_with_data,
    onadata_project_name,
    type_2 
from "tree_aid"."airbyte"."surveys"
where is_in_scope::bool is true
  );