
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ta_rhomis_eb3eb8_2020"
where id is not null
group by id
having count(*) > 1


