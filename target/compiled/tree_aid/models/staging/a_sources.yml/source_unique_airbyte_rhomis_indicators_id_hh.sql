
    
    

select
    id_hh as unique_field,
    count(*) as n_records

from "tree_aid"."airbyte"."rhomis_indicators"
where id_hh is not null
group by id_hh
having count(*) > 1


