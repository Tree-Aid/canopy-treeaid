
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."airbyte"."core_questions"
where id is not null
group by id
having count(*) > 1


