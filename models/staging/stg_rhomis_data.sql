-- what we're trying to do: 
-- 1. find using `{{survey_type_table('Rhomis')}}` the data that is not already present in  extended.rhomis_surveys 
-- 2. insert into extended.rhomis_survey the missing rows (if any)
-- 3. create view stg_rhomis_data as equivalent to extended.rhomis_survey


with rhomis_data as 
(
{{survey_type_table('Rhomis')}} 
),
insert into extended.rhomis_surveys 
(select 
row_number() over (partition by form_name order by submission_id) as row_id , 
* 
from rhomis_data
)
select * from extended.rhomis_surveys 
