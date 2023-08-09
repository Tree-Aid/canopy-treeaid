
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ta_rhomis_gb1_2021"
where id is not null
group by id
having count(*) > 1


