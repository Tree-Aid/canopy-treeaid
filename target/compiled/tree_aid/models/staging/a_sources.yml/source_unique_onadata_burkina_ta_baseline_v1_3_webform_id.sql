
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."burkina_ta_baseline_v1_3_webform"
where id is not null
group by id
having count(*) > 1


