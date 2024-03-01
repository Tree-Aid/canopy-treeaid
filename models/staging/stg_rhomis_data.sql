-- what we're trying to do: 
-- 1. find using `survey_type_table('Rhomis')` the data that is not already present in  extended.rhomis_surveys 
-- 2. insert into extended.rhomis_survey the missing rows (if any)
-- 3. create view stg_rhomis_data as equivalent to extended.rhomis_survey

with rhomis_data as 
(
{{survey_type_table('Rhomis')}} 
)
select 
row_number() over (partition by form_name order by submission_id) as row_id, 
date_trunc('quarter',date_assessment::date) as assessment_quarter_date,
* 
from rhomis_data
where form_id::int = 770127 and project_code = 'BB6' and region not in ('HAUTS_BASSINS', '')
union
select 
row_number() over (partition by form_name order by submission_id) as row_id, 
date_trunc('quarter',date_assessment::date) as assessment_quarter_date,
* 
from rhomis_data
where form_id::int = 298153 and project_code = 'BB6' and region not in ('HAUTS_BASSINS', '')
union
select 
row_number() over (partition by form_name order by submission_id) as row_id, 
date_trunc('quarter',date_assessment::date) as assessment_quarter_date,
* 
from rhomis_data
where project_code <> 'BB6' and form_id::int not in (298153, 770127)
