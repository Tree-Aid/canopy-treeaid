select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."tree_aid_rhomis_gb8_final"
where id is null



      
    ) dbt_internal_test