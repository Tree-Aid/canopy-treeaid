select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."tree_aid_rho_mis_bc3_oct-dec2022_final"
where id is null



      
    ) dbt_internal_test