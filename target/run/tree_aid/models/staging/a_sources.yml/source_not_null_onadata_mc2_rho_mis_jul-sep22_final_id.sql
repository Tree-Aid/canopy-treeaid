select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."mc2_rho_mis_jul-sep22_final"
where id is null



      
    ) dbt_internal_test