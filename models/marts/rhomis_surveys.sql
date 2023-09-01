{%- set forest_governance_fields= ['access_permission','access_equality' ,'village_engagement' ,'forest_management_tools_yn' ,'population_needs_met' ,
  'protection_actions_yn' ,'village_protection'] -%}

{%- set vcc_fields= ['voice_hh_food','voice_hh_spending','voice_hh_crops','voice_hh_confidence','voice_comm_speaking','voice_comm_meetings','voice_comm_activities','choice_hh_training',
'choice_hh_decisions','choice_hh_income_women','choice_comm_market','choice_comm_committee','control_hh_farm_land','control_hh_comm_land','control_hh_assets','control_hh_livestock',
'control_hh_trees','control_hh_savings','control_comm_resources','control_comm_leadership','control_comm_by_laws'] -%}

{%- set disability_fields= ['seeing','hearing','walking','memory','self_care','language'] -%}

{%- set income_fields = ['total_income_per_year', 'total_income_with_ntfp_per_year', 'ntfp_income_per_year', 'crop_income_per_year',
'livestock_income_per_year','off_farm_income_per_year' ]-%}

--  Joining rhomis data with already calculated rhomis indicators
with rhomis_data as 
(select 
*
from {{ref('stg_rhomis_data')}} rd 
left join {{ref('stg_rhomis_indicators')}} ri on rd.form_id::int = ri.id_rhomis_dataset::int and rd.row_id = ri.id_hh
),

----Calculating the fields relevant for indicator building
calculated_fields as 
(
select
*,
count(rd.assessment_quarter_date::date) OVER (PARTITION BY rd.assessment_quarter_date::date,rd.form_id) as quarter_count,
   (rd.total_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) as total_income_per_year,
  ((rd.total_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) + (rd.ntfp_income/rd.currency_conversion_lcu_to_ppp)) as total_income_with_ntfp_per_year,
  (rd.ntfp_income/rd.currency_conversion_lcu_to_ppp) as ntfp_income_per_year,
  (rd.crop_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) as crop_income_per_year,
  (rd.livestock_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) as livestock_income_per_year,
  (rd.off_farm_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) as off_farm_income_per_year,
  case when (rd.total_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) + (rd.ntfp_income/rd.currency_conversion_lcu_to_ppp) / nullif((rd.hh_size_mae * 365),0) <= 1.90 then true else false end as extreme_poverty,
  case when (rd.total_income_lcu_per_year/rd.currency_conversion_lcu_to_ppp) + (rd.ntfp_income/rd.currency_conversion_lcu_to_ppp) + (rd.value_crop_consumed_lcu_per_hh_per_year/rd.currency_conversion_lcu_to_ppp) + (rd.value_livestock_products_consumed_lcu_per_hh_per_year/rd.currency_conversion_lcu_to_ppp) + (rd.value_farm_products_consumed_lcu_per_hh_per_year/rd.currency_conversion_lcu_to_ppp) + (rd.value_ntfp_consumed/rd.currency_conversion_lcu_to_ppp) / nullif((rd.hh_size_mae * 365),0) <= 1.90 then true else false end as extreme_poverty_TVA_incl, 
  case when rd.foodavailability / (rd.hh_size_mae * 365) < 2500 then true else false end as below_calline,
  case when (rd.foodavailability + rd.off_farm_income_lcu_per_year*(3650/121.58) + rd.livestock_income_lcu_per_year*(3650/121.58) +
    rd.crop_income_lcu_per_year*(3650/121.58) + rd.ntfp_income*(3650/121.58)) / (rd.hh_size_mae * 365) < 2500 then true else false end as below_calline_potential,
  rd.ntfp_consumed_calories_kcal_per_hh_per_year / 
    nullif(coalesce(rd.farm_products_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_consumed_calories_kcal_per_hh_per_year::float,0),0)
    as proportion_ntfp_in_diet,
  (rd.ntfp_consumed_calories_kcal_per_hh_per_year + rd.ntfp_income*(3650/121.58)) / 
    nullif(coalesce(rd.farm_products_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_income*(3650/121.58)::float,0),0)
    as proportion_ntfp_in_diet_potential,
  coalesce ((case when rd.hfias_status='' then null else rd.hfias_status end), 
  (case when rd.fies_score::float >= 0 and rd.fies_score::float <=1 then 'FoodSecure'
    when rd.fies_score::float > 1 and rd.fies_score::float <=3 then 'MildlyFI'
    when rd.fies_score::float >3 and rd.fies_score::float <=5 then 'ModeratelyFI'
    when rd.fies_score::float >5 and rd.fies_score::float <=8 then 'SeverelyFI'
    else null end)) as food_insecurity_status,
--    case when 
--      length(rd.biological_methods) + length(rd.gully_methods) + length(rd.soil_water_cons) >0 then true else false end
--      as uses_nrm_techniques,
    case when (case when biological_methods is null or biological_methods in ('None') then 0 else length(biological_methods) end) + (case when gully_methods is null or gully_methods in ('None') then 0 else length(gully_methods) end) + (case when soil_water_cons is null or soil_water_cons in ('None') then 0 else length(soil_water_cons) end) >0 then true else false end
      as uses_nrm_techniques,
    case when (case when biological_methods is null or biological_methods in ('None') then 0 else length(biological_methods) end) >0 then true else false end
      as uses_bio_techniques,
    case when (case when soil_water_cons is null or soil_water_cons in ('None') then 0 else length(soil_water_cons) end) >0 then true else false end
      as uses_swc_techniques,
    case when (case when gully_methods is null or gully_methods in ('None') then 0 else length(gully_methods) end) >0 then true else false end
      as uses_gully_techniques,
 (     
{% for field in forest_governance_fields %}
  coalesce(
  case 
  when {{field}} in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when {{field}} in ('little_access', 'moderate', 'lot' ) then 2
  when {{field}} in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  {# assumes not know = 1 #}
  else null end,0)   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
 )/ 21.0 as governance_score,
 ( 
{% for field in vcc_fields %}
  coalesce(
  case
    when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'none' then 1
    when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'little' then 2
    when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'moderate' then 2 
    when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'equal' then 3 
    when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'more_than' then 4 
  else null end,0)   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
  ) / 21.0 as vcc_score,
 ( 
{% for field in vcc_fields %}
  coalesce(
  case
    when {{field}} = 'none' then 1
    when {{field}} = 'little' then 2
    when {{field}} = 'moderate' then 2 
    when {{field}} = 'equal' then 3 
    when {{field}} = 'more_than' then 4 
 else null end,0)   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
  ) / 21.0 as vcc_score_all,

{% for field in disability_fields %}  
coalesce(
case 
  when {{field}} in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
{% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}  as disability_score,

{% for field in disability_fields %}  
coalesce(
case 
  when {{field}} in ('lot_difficulty', 'impossible') then 1
  else null end,0)
{% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}  as severely_disabled,   
array_length(regexp_split_to_array(replace(replace(replace(replace(rd.biological_methods,'[',''),']',''),'"',''),',',''),' '),1) as biological_methods_count,
array_length(regexp_split_to_array(replace(replace(replace(replace(rd.gully_methods,'[',''),']',''),'"',''),',',''),' '),1) as gully_methods_count,
array_length(regexp_split_to_array(replace(replace(replace(replace(rd.soil_water_cons,'[',''),']',''),'"',''),',',''),' '),1) as soil_water_cons_count,
CASE 
    when rd.respondentsex in ('F','female','f','Female') then 'Female'
    when rd.respondentsex in ('M','male','m','Male') then 'Male'
end as gender, --BAO gender to limit measures in Akuko
case 
when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') then 'Female'
when rd.respondent_ntfp in ('senior_woman','young_woman') then 'Female'
else 'Male'
end as vcc_gender
from rhomis_data rd
 ),
 quarter_aggregate as(
    select distinct
    cf.form_id,
case 
    when quarter_count>=max(quarter_count) OVER (PARTITION BY cf.form_id) then cf.assessment_quarter_date
else null
end as max_quarter_date
from calculated_fields cf
)
---Selecting the relevant fields
select 
cf.row_id,	
cf.form_name,
cf.timing,
cf.year,
cf.country,
cf.iso_country_code,
cf.project_code,
cf.form_id,
cf.submission_id,
initcap(replace(cf.region,'_',' ')) as region,
initcap(replace(cf.province,'_',' ')) as province,
initcap(replace(cf.commune,'_',' ')) as commune,
cf.date_assessment,
cf.biological_methods,
cf.biological_methods_count,
cf.gully_methods,
cf.gully_methods_count,
cf.soil_water_cons,
cf.soil_water_cons_count,
cf.gender,
cf.vcc_gender,
--cf.respondentsex, BAO replace this with gender to limit measures in Akuko
cf.respondent_ntfp,
case 
  when beneficiary_control in ('Y','yes','y','Yes') then 'Yes'
  when beneficiary_control in ('N','no','n','No') then 'No'
else 'Yes' end as beneficiary_control,
cf.hdds_good_season,
--cf.hdds_bad_season,
-- cf.total_income_per_year,
-- cf.total_income_with_ntfp_per_year,
-- cf.ntfp_income_per_year,
-- cf.crop_income_per_year,
-- cf.livestock_income_per_year,
-- cf.off_farm_income_per_year,
{% for field in income_fields %}  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.{{field}} end as {{field}},
{% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
-- BAO Request from TreeAid to maintain records with an income > 50000 but nullify these income fields so they don't skew income analysis
cf.value_crop_consumed_lcu_per_hh_per_year,
cf.value_livestock_products_consumed_lcu_per_hh_per_year,
cf.value_farm_products_consumed_lcu_per_hh_per_year,
cf.crop_consumed_calories_kcal_per_hh_per_year,
cf.farm_products_consumed_calories_kcal_per_hh_per_year,
cf.value_ntfp_consumed,
cf.ntfp_consumed_calories_kcal_per_hh_per_year,
cf.firewood_consumed_kgs_per_hh_per_day,
cf.nr_months_food_shortage,
cf.extreme_poverty,
cf.extreme_poverty_TVA_incl, -- GN added	
cf.below_calline,
cf.below_calline_potential,
cf.proportion_ntfp_in_diet,
cf.proportion_ntfp_in_diet_potential,
cf.food_insecurity_status,
cf.uses_nrm_techniques,
cf.uses_bio_techniques, -- GN added
cf.uses_swc_techniques, -- GN added 
cf.uses_gully_techniques, -- GN added
cf.governance_score,
cf.vcc_score,
cf.vcc_score_all,
cf.disability_score,
cf.severely_disabled,
extract('Year' from cf.date_assessment::date) as assessment_year,
date_trunc('year',cf.date_assessment::date) as assessment_year_date,
assessment_quarter_date,
qa.max_quarter_date,
 Case
         when extract(month from max_quarter_date) in (1,2,3) then Concat('Jan - Mar ',extract('Year' from max_quarter_date))
         when extract(month from max_quarter_date) in (4,5,6) then Concat('Apr - Jun ',extract('Year' from max_quarter_date))
         when extract(month from max_quarter_date) in (7,8,9) then Concat('Jul - Sep ',extract('Year' from max_quarter_date))
         when extract(month from max_quarter_date) in (10,11,12) then Concat('Oct - Dec ',extract('Year' from max_quarter_date))
end as max_quarter_name,
cf.hdds_bad_season,
case -- add a test field to get test indicators BAO
    when ((cf.test is null ) or (cf.test not in ('y', 'Y','yes','Yes')) ) then false
    else true
end as test_check
from calculated_fields cf
left join quarter_aggregate qa on qa.form_id=cf.form_id and qa.max_quarter_date is not null
where cf.form_id is not null -- filters forms that don't have survey definitions yet
--and ((cf.test is null ) or (cf.test not in ('y', 'Y','yes','Yes')) ) -- BAO add a test field to get test indicators
and (cf.nr_months_food_shortage <='12' or cf.nr_months_food_shortage is null) -- and (cf.total_income_with_ntfp_per_year <='50000' or cf.total_income_with_ntfp_per_year is null)
-- TBD - BAO removing filter to keep records with these data points and instead null the income fields above
and (cf.hdds_good_season <='12' or cf.hdds_good_season is null) -- and cf.form_id='697818' --for quarter date QA
---and firewood_consumed_kgs_per_hh_per_day <='25'
