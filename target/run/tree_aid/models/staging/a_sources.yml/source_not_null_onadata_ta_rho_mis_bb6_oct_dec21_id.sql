select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."ta_rho_mis_bb6_oct_dec21"
where id is null



      
    ) dbt_internal_test