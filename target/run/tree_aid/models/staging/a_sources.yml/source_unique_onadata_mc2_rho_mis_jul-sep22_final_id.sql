select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."mc2_rho_mis_jul-sep22_final"
where id is not null
group by id
having count(*) > 1



      
    ) dbt_internal_test