
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."tree_aid_rhomis_2_0_niger_na4"
where id is not null
group by id
having count(*) > 1


