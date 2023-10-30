select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id_hh
from "tree_aid"."airbyte"."rhomis_indicators"
where id_hh is null



      
    ) dbt_internal_test