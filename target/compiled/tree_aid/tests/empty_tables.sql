----Checks whether all the models have data
with data as 
(
---Rhomis surveys   
select 
submission_id,
form_name
from "tree_aid"."dbt_jane"."rhomis_surveys"
union all 
----Enterprise surveys
select 
submission_id,
form_name
from "tree_aid"."dbt_jane"."enterprise_surveys"
union all
---Land surveys
select 
submission_id,
form_name
from "tree_aid"."dbt_jane"."land_surveys"
)
select * from data
group by 1,2 
having not count(submission_id)>0