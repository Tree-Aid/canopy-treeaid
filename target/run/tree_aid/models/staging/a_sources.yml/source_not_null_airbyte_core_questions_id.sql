select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."airbyte"."core_questions"
where id is null



      
    ) dbt_internal_test