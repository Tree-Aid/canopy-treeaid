select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."ta_rhomis_gb8_endline_jan-mar2021_consolidated"
where id is null



      
    ) dbt_internal_test