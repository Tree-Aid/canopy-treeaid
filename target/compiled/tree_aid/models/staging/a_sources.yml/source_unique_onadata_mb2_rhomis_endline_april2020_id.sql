
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."mb2_rhomis_endline_april2020"
where id is not null
group by id
having count(*) > 1


