with repeat_group_data as
(
{{survey_type_table('Enterprise survey', repeat='derivatives')}} 
),
easy_joining_data as 
(
select
d.form_name,
d.country,
d.project_code,
d.form_id,
d.id,
d.submission_id,
ls.region,
ls.province,
ls.commune,
ls.date_assessment,
extract('Year' from ls.date_assessment::date) as assessment_year,
--repeat fields
d.product_derivative,
d.sales_turn_over_derivatives
from repeat_group_data d
inner join {{ ref('enterprise_surveys') }} ls on d.submission_id=ls.submission_id
where d.submission_id is not null and 
d.product_derivative is not null 
),
harder_joining_data as 
(
select
d.form_name,
d.country,
d.project_code,
d.form_id,
d.id,
ls.submission_id as submission_id,
ls.region,
ls.province,
ls.commune,
ls.date_assessment,
extract('Year' from ls.date_assessment::date) as assessment_year,
--repeat fields
d.product_derivative,
d.sales_turn_over_derivatives
from repeat_group_data d
left join {{ ref('enterprise_surveys') }} ls on  
    d.form_id::int = ls.form_id::int and  d.parent_index =ls.submission_index 
where d.submission_id is null and 
d.product_derivative is not null 
)
select * from easy_joining_data
union all
select * from harder_joining_data

