select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."ta_rho_mis_bc1_endline_oct2020_final"
where id is null



      
    ) dbt_internal_test