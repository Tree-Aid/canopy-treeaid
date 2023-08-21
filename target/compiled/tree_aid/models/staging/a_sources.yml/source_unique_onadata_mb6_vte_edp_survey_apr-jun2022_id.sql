
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."mb6_vte_edp_survey_apr-jun2022"
where id is not null
group by id
having count(*) > 1


