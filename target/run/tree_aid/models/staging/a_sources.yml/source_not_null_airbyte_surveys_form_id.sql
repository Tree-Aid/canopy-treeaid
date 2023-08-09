select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select form_id
from "tree_aid"."airbyte"."surveys"
where form_id is null



      
    ) dbt_internal_test