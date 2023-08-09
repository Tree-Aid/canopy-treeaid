select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."burkina_ta_bb1_v1_3_1_tablet"
where id is null



      
    ) dbt_internal_test