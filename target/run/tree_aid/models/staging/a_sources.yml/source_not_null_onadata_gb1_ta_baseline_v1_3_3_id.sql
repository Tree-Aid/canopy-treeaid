select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."gb1_ta_baseline_v1_3_3"
where id is null



      
    ) dbt_internal_test