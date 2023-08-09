select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."burkina_ta_baseline_v1_3_webform"
where id is null



      
    ) dbt_internal_test