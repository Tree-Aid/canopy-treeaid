
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ethiopia_meki_2"
where id is not null
group by id
having count(*) > 1


