
    
    

select
    id as unique_field,
    count(*) as n_records

from "tree_aid"."onadata"."mb6_income_agri_nrm_vcc_jan-mar22"
where id is not null
group by id
having count(*) > 1


