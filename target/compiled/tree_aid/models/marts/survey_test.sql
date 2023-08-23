select form_name,timing,date_assessment::date,assessment_year as year, country,NULL as iso_country_code, project_code,form_id,submission_id,submission_index,region,province,
commune,'Enterprise survey' as survey_type  from "tree_aid"."dbt_bokidi"."enterprise_surveys"
where test_check is true
UNION ALL
select form_name,timing,date_assessment::date,year,country,iso_country_code,project_code,form_id,	submission_id, NULL as submission_index,region,province,
commune,'Rhomis survey' as survey_type
 from "tree_aid"."dbt_bokidi"."rhomis_surveys"
where test_check is true
UNION ALL
select form_name,NULL as timing,date_assessment::date,assessment_year as year,country,NULL as iso_country_code,project_code,form_id,submission_id,NULL as submission_index,region,province,
commune,'Land survey' as survey_type
from "tree_aid"."dbt_bokidi"."land_surveys"
where test_check is true