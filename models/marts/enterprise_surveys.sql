with enterprise_surveys as
(
 {{survey_type_table('Enterprise survey')}} 
)
select  
 es.form_name,
 es.type,
 es.timing,
 es.country,
 es.project_code,
 es.form_id,
 es.submission_id,
 es.submission_index, 
 initcap(replace(es.region,'_',' ')) as region,
 initcap(replace(es.province,'_',' ')) as province,
 initcap(replace(es.commune,'_',' ')) as commune,	
 es.date_assessment::date,
 extract('Year' from es.date_assessment::date) as assessment_year,
 date_trunc('year',es.date_assessment::date) as assessment_year_date,
 es.group_vte,
 es.product_primary,
 es.sales_turn_over_local_income,
 es.sales_turn_over_national_income,
 es.sales_turn_over_international_income,
 coalesce(es.sales_turn_over_local_income::INTEGER,0) + coalesce(es.sales_turn_over_national_income::INTEGER,0) + 
    coalesce(es.sales_turn_over_international_income::INTEGER,0) as total_income,
 es.test,
 es.group_costs_amount
 from enterprise_surveys es
 where es.form_id is not null and 
 ((es.test is null) Or (es.test not in ('y', 'Y','yes','Yes')))