
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ta_rho_mis_bb6_oct_dec21"
where id is not null
group by id
having count(*) > 1


