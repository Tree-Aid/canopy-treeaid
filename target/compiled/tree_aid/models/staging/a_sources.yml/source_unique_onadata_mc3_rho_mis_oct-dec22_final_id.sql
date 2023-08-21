
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."mc3_rho_mis_oct-dec22_final"
where id is not null
group by id
having count(*) > 1


