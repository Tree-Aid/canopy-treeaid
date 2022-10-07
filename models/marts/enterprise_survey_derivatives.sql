with repeat_group_data as
(
{{survey_type_table('Enterprise survey', repeat='derivatives')}} 
),
-- this refactored
easy_joining_data as 
(
select
{{get_standard_columns('d','es')}},
--repeat fields
d.product_derivative,
d.sales_turn_over_derivatives
from repeat_group_data d
inner join {{ ref('enterprise_surveys') }} es on d.submission_id=es.submission_id
where d.submission_id is not null and 
d.product_derivative is not null and (es.test is null or es.test not in ('y', 'Y','yes','Yes'))
),
harder_joining_data as 
(
select
{{get_standard_columns_2('d','es')}},
--repeat fields
d.product_derivative,
d.sales_turn_over_derivatives
from repeat_group_data d
left join {{ ref('enterprise_surveys') }} es on  
    d.form_id::int = es.form_id::int and  d.parent_index =es.submission_index 
where d.submission_id is null and 
d.product_derivative is not null and (es.test is null or es.test not in ('y', 'Y','yes','Yes'))
)
select * from easy_joining_data
union all
select * from harder_joining_data

