
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."tree_aid_rho_mis_bc3_oct-dec2022_final"
where id is not null
group by id
having count(*) > 1


