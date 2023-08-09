select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."mb6_vte_edp_survey_apr-jun2022"
where id is null



      
    ) dbt_internal_test