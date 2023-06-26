with filter_values as
(
select country, project_code, assessment_year, assessment_year_date, beneficiary_control from {{ ref('enterprise_surveys') }}
union all
select country, project_code, assessment_year, assessment_year_date, beneficiary_control from {{ ref('land_surveys') }}
union all
select  country,project_code, assessment_year, assessment_year_date, beneficiary_control from {{ ref('rhomis_surveys') }}
union all
select  country,project as project_code, assessment_year, assessment_year_date,beneficiary_control from {{ ref('beneficiaries') }}
)
select 
country,
project_code,
assessment_year,
assessment_year_date,
beneficiary_control
from filter_values
where assessment_year is not null