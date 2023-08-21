
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."ec0_mini_rho_mis_jan-mar2023_final"
where id is not null
group by id
having count(*) > 1


