select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."ethiopia_ea3_eb5_1_3_4"
where id is null



      
    ) dbt_internal_test