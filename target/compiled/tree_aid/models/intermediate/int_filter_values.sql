with filter_values as
(
select country, project_code, assessment_year, assessment_year_date, beneficiary_control from "tree_aid"."dbt_bokidi"."enterprise_surveys"
union all
select country, project_code, assessment_year, assessment_year_date, beneficiary_control from "tree_aid"."dbt_bokidi"."land_surveys"
union all
select  country,project_code, assessment_year, assessment_year_date, beneficiary_control from "tree_aid"."dbt_bokidi"."rhomis_surveys"
union all
select  country,project as project_code, assessment_year, assessment_year_date,beneficiary_control from "tree_aid"."dbt_bokidi"."beneficiaries"
)
select 
country,
project_code,
assessment_year,
assessment_year_date,
beneficiary_control
from filter_values
where assessment_year is not null