
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."voice_choice_control_mtr_bc1"
where id is not null
group by id
having count(*) > 1


