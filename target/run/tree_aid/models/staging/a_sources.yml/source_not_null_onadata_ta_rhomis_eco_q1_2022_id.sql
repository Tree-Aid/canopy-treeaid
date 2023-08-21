select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."ta_rhomis_eco_q1_2022"
where id is null



      
    ) dbt_internal_test