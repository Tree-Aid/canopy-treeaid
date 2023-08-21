select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    form_id as unique_field,
    count(*) as n_records

from "tree_aid"."airbyte"."surveys"
where form_id is not null
group by form_id
having count(*) > 1



      
    ) dbt_internal_test