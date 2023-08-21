
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."tree_aid_rhomis_na6_endline"
where id is not null
group by id
having count(*) > 1


