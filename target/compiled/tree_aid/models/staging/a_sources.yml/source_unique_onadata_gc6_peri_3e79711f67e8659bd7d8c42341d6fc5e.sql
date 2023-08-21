
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."gc6_perimeter_village_may2021_survey_final"
where id is not null
group by id
having count(*) > 1


