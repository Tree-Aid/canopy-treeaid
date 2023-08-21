
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."mb2_baseline"
where id is not null
group by id
having count(*) > 1


