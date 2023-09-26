select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      ----Checks whether all the models have data
with data as 
(
---Rhomis surveys   
select 
submission_id,
form_name
from "tree_aid"."dbt_bokidi"."rhomis_surveys"
union all 
----Enterprise surveys
select 
submission_id,
form_name
from "tree_aid"."dbt_bokidi"."enterprise_surveys"
union all
---Land surveys
select 
submission_id,
form_name
from "tree_aid"."dbt_bokidi"."land_surveys"
)
select * from data
group by 1,2 
having not count(submission_id)>0
      
    ) dbt_internal_test