with sales_elements as 
(
{{survey_type_table('Enterprise survey', repeat='sales_elements')}} 
), 
--updated joins
easy_joining_data as 
(
select
{{get_standard_columns('se','es')}},
--repeat fields
se.product_element,
se.sales_local_income,
se.sales_national_income,
se.sales_international_income
from sales_elements se
inner join {{ ref('enterprise_surveys') }} es on se.submission_id=es.submission_id
where se.submission_id is not null and 
se.product_element is not null 
),
harder_joining_data as 
(
select
{{get_standard_columns_2('se','es')}},
--repeat fields
se.product_element,
se.sales_local_income,
se.sales_national_income,
se.sales_international_income
from sales_elements se
left join {{ ref('enterprise_surveys') }} es on  
    se.form_id::int = es.form_id::int and  se.parent_index =es.submission_index 
where se.submission_id is null and 
se.product_element is not null
)
select * from easy_joining_data
union all
select * from harder_joining_data