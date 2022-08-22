
 with filter_values as
(
select distinct country, project_code, assessment_year from dbt.enterprise_surveys es 
union
select distinct country, project_code, assessment_year from dbt.land_surveys ls 
union
select distinct country,project_code, extract('Year' from date_assessment::date) as assessment_year from dbt.rhomis_surveys rs 
)
select country,project_code,assessment_year from filter_values
where assessment_year is not null