select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."gc6_perimeter_village_may2021_survey_final"
where id is null



      
    ) dbt_internal_test