select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."ec0_mini_rho_mis_jan-mar2023_final"
where id is null



      
    ) dbt_internal_test