
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."a_vte_coop_assessment_gb1"
where id is not null
group by id
having count(*) > 1


