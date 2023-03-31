{%- set forest_governance_fields= ['access_permission','access_equality' ,'village_engagement' ,'forest_management_tools_yn' ,'population_needs_met' ,
  'protection_actions_yn' ,'village_protection'] -%}

{%- set vcc_fields= ['voice_hh_food','voice_hh_spending','voice_hh_crops','voice_hh_confidence','voice_comm_speaking','voice_comm_meetings','voice_comm_activities','choice_hh_training',
'choice_hh_decisions','choice_hh_income_women','choice_comm_market','choice_comm_committee','control_hh_farm_land','control_hh_comm_land','control_hh_assets','control_hh_livestock',
'control_hh_trees','control_hh_savings','control_comm_resources','control_comm_leadership','control_comm_by_laws'] -%}

{%- set disability_fields= ['seeing','hearing','walking','memory','self_care','language'] -%}

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
   (rd.total_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) as total_income_per_year,
  ((rd.total_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) + (rd.ntfp_income*rd.currency_conversion_lcu_to_ppp)) as total_income_with_ntfp_per_year,
  (rd.ntfp_income*rd.currency_conversion_lcu_to_ppp) as ntfp_income_per_year,
  (rd.crop_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) as crop_income_per_year,
  (rd.livestock_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) as livestock_income_per_year,
  (rd.off_farm_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) as off_farm_income_per_year,
  case when (rd.total_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) + (rd.ntfp_income*rd.currency_conversion_lcu_to_ppp) / nullif((rd.hh_size_mae * 365),0) <= 1.90 then true else false end as extreme_poverty,
  case when (rd.total_income_lcu_per_year*rd.currency_conversion_lcu_to_ppp) + (rd.ntfp_income*rd.currency_conversion_lcu_to_ppp) + (rd.value_crop_consumed_lcu_per_hh_per_year*rd.currency_conversion_lcu_to_ppp) + (rd.value_livestock_products_consumed_lcu_per_hh_per_year*rd.currency_conversion_lcu_to_ppp) + (rd.value_farm_products_consumed_lcu_per_hh_per_year*rd.currency_conversion_lcu_to_ppp) + (rd.value_ntfp_consumed*rd.currency_conversion_lcu_to_ppp) / nullif((rd.hh_size_mae * 365),0) <= 1.90 then true else false end as extreme_poverty_TVA_incl, 
  case when rd.foodavailability / (rd.hh_size_mae * 365) < 2500 then true else false end as below_calline, 
    rd.ntfp_consumed_calories_kcal_per_hh_per_year / 
    nullif(coalesce(rd.farm_products_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_consumed_calories_kcal_per_hh_per_year::float,0),0)
    as proportion_ntfp_in_diet,
  coalesce ((case when rd.hfias_status='' then null else rd.hfias_status end), 
  (case when rd.fies_score::float >= 0 and rd.fies_score::float <=1 then 'FoodSecure'
    when rd.fies_score::float > 1 and rd.fies_score::float <=3 then 'MildlyFI'
    when rd.fies_score::float >3 and rd.fies_score::float <=5 then 'ModeratelyFI'
    when rd.fies_score::float >5 and rd.fies_score::float <=8 then 'SeverelyFI'
    else null end)) as food_insecurity_status,
    case when 
      length(rd.biological_methods) + length(rd.gully_methods) + length(rd.soil_water_cons) >0 then true else false end
      as uses_nrm_techniques,
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
  when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'moderate' then 3 
  when rd.respondentsex in ('F','female','f','Female') and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'more_than' then 4 
  else null end,0)   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
  ) / 21.0 as vcc_score,

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
array_length(regexp_split_to_array(replace(replace(replace(replace(rd.soil_water_cons,'[',''),']',''),'"',''),',',''),' '),1) as soil_water_cons_count
from rhomis_data rd
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
cf.respondentsex,
cf.respondent_ntfp,
case 
  when beneficiary_control in ('Y','yes','y','Yes') then 'Yes'
  when beneficiary_control in ('N','no','n','No') then 'No'
else 'Yes' end as beneficiary_control,
cf.hdds_good_season,
cf.hdds_bad_season,
cf.total_income_per_year,
cf.total_income_with_ntfp_per_year,
cf.ntfp_income_per_year,
cf.crop_income_per_year,
cf.livestock_income_per_year,
cf.off_farm_income_per_year,
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
cf.proportion_ntfp_in_diet,
cf.food_insecurity_status,
cf.uses_nrm_techniques,
cf.uses_bio_techniques, -- GN added
cf.uses_swc_techniques, -- GN added 
cf.uses_gully_techniques, -- GN added
cf.governance_score,
cf.vcc_score,
cf.disability_score,
cf.severely_disabled,
extract('Year' from cf.date_assessment::date) as assessment_year,
date_trunc('year',cf.date_assessment::date) as assessment_year_date,
cf.hdds_bad_season
from calculated_fields cf
where cf.form_id is not null -- filters forms that don't have survey definitions yet
and ((cf.test is null ) or (cf.test not in ('y', 'Y','yes','Yes')) ) 
and cf.nr_months_food_shortage <='12' and cf.total_income_with_ntfp_per_year <='50000' 
and cf.hdds_good_season <='12'
---and firewood_consumed_kgs_per_hh_per_day <='25'