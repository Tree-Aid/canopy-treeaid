select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."tree_aid_rho_mis_mb6_2020"
where id is null



      
    ) dbt_internal_test