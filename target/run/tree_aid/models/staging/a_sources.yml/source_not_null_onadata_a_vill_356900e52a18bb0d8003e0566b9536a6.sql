select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."a_village_tree_enterprise_co-op_mb2_mali"
where id is null



      
    ) dbt_internal_test