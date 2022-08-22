
 with filter_values as
(
select distinct country, project_code, assessment_year from {{ ref('enterprise_surveys') }}
union
select distinct country, project_code, assessment_year from {{ ref('land_surveys') }}
union
select distinct country,project_code, extract('Year' from date_assessment::date) as assessment_year from {{ ref('land_surveys') }}
)
select country,project_code,assessment_year from filter_values
where assessment_year is not null