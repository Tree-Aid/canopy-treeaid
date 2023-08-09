
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."rhomis_treeaid_na4_endline_june2021_tele_final"
where id is not null
group by id
having count(*) > 1


