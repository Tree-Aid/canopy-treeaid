with filter_values as
(
select country, project_code, assessment_year, assessment_year_date, beneficiary_control from {{ ref('enterprise_surveys') }}
union all
select country, project_code, assessment_year, assessment_year_date, beneficiary_control from {{ ref('land_surveys') }}
union all
select  country,project_code, assessment_year, assessment_year_date, beneficiary_control from {{ ref('rhomis_surveys') }}
union all
select  case when project like 'B%' then 'Burkina Faso' else country end as country,project as project_code, year::DOUBLE PRECISION as assessment_year, case when year is null then null else concat(year,'-','01','-01')::date end as assessment_year_date,'Yes' as beneficiary_control from {{ source('onadata', 'beneficiary_list') }}
)
select 
country,
project_code,
assessment_year,
assessment_year_date,
beneficiary_control
from filter_values
where assessment_year is not null