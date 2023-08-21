select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."rhomis_treeaid_na4_endline_june2021_tele_final"
where id is null



      
    ) dbt_internal_test