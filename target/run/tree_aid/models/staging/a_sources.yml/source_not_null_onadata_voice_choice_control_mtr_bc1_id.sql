select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "tree_aid"."onadata"."voice_choice_control_mtr_bc1"
where id is null



      
    ) dbt_internal_test