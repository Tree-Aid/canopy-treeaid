
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."a_village_tree_enterprise_co-op_mb2_mali"
where id is not null
group by id
having count(*) > 1


