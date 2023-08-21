select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."mb6_income_agri_nrm_vcc_jan-mar22"
where id is null



      
    ) dbt_internal_test