
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ta_rhomis_eco_q1_2022"
where id is not null
group by id
having count(*) > 1


