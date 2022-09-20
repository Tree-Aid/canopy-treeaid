with enterprise_surveys as
(
 {{survey_type_table('Enterprise survey')}} 
)
select  
 form_name,
 type,
 timing,
 country,
 project_code,
 form_id,
 submission_id,
 submission_index, 
 initcap(replace(region,'_',' ')) as region,
 initcap(replace(province,'_',' ')) as province,
 initcap(replace(commune,'_',' ')) as commune,	
 date_assessment::date,
 extract('Year' from date_assessment::date) as assessment_year,
 group_vte,
 product_primary,
 sales_turn_over_local_income,
 sales_turn_over_national_income,
 sales_turn_over_international_income,
 coalesce(sales_turn_over_local_income::INTEGER,0) + coalesce(sales_turn_over_national_income::INTEGER,0) + 
    coalesce(sales_turn_over_international_income::INTEGER,0) as total_income,
 test,
 group_costs_amount
 from enterprise_surveys es
 where form_id is not null and 
 ((test is null) Or (test not in ('y', 'Y','yes','Yes')))