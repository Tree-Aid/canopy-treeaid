select 
{{get_common_columns()}},
group_vte,
initcap(replace(product_element,'_',' ')) as product_primary,
sales_local_income,
sales_national_income,
sales_international_income,
coalesce(sales_local_income::float,0) + coalesce(sales_national_income::float,0) + coalesce(sales_international_income::float,0) as total_income,
group_costs_amount
from {{ ref('enterprise_survey_product') }}

union all

select 
{{get_common_columns()}},
group_vte,
initcap(replace(product_primary,'_',' ')) as product_primary,
sales_turn_over_local_income,
sales_turn_over_national_income,
sales_turn_over_international_income,
total_income,
group_costs_amount
from {{ ref('enterprise_surveys') }}






