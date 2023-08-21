
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ta_rhomis_gb8_endline_jan-mar2021_consolidated"
where id is not null
group by id
having count(*) > 1


