----Checks whether all the models have data
with data as 
(
---Rhomis surveys   
select 
submission_id,
form_name
from {{ ref('rhomis_surveys') }}
union all 
----Enterprise surveys
select 
submission_id,
form_name
from {{ ref('enterprise_surveys') }}
union all
---Land surveys
select 
submission_id,
form_name
from {{ ref('land_surveys') }}
)
select * from data
group by 1,2 
having not count(submission_id)>0
