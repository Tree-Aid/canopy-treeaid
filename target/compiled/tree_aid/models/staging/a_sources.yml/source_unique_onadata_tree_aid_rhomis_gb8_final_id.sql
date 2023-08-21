
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."tree_aid_rhomis_gb8_final"
where id is not null
group by id
having count(*) > 1

