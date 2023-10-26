
  
    

  create  table "tree_aid"."dbt_jane"."enterprise_survey_product_combined__dbt_tmp"
  
  
    as
  
  (
    select 

        form_name,
        country,
        project_code,
        form_id,
        submission_id,
        region,
        province,
        commune,
        date_assessment,
        assessment_year,
        assessment_year_date,
        beneficiary_control
,
group_vte,
initcap(replace(product_element,'_',' ')) as product_primary,
sales_local_income,
sales_national_income,
sales_international_income,
coalesce(sales_local_income::float,0) + coalesce(sales_national_income::float,0) + coalesce(sales_international_income::float,0) as total_income,
group_costs_amount
from "tree_aid"."dbt_jane"."enterprise_survey_product"

union all

select 

        form_name,
        country,
        project_code,
        form_id,
        submission_id,
        region,
        province,
        commune,
        date_assessment,
        assessment_year,
        assessment_year_date,
        beneficiary_control
,
group_vte,
initcap(replace(product_primary,'_',' ')) as product_primary,
sales_turn_over_local_income,
sales_turn_over_national_income,
sales_turn_over_international_income,
total_income,
group_costs_amount
from "tree_aid"."dbt_jane"."enterprise_surveys"
  );
  