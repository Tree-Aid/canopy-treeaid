
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ta_rhomis_gc3_oct_2020"
where id is not null
group by id
having count(*) > 1


