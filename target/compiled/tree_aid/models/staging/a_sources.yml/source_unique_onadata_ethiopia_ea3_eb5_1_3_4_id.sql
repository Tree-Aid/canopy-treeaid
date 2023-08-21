
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ethiopia_ea3_eb5_1_3_4"
where id is not null
group by id
having count(*) > 1


