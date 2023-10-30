
  
    

  create  table "tree_aid"."dbt_jane"."rhomis_surveys__dbt_tmp"
  
  
    as
  
  (
    --  Joining rhomis data with already calculated rhomis indicators
with rhomis_data as 
(select 
*
from "tree_aid"."dbt_jane"."stg_rhomis_data" rd 
left join "tree_aid"."dbt_jane"."stg_rhomis_indicators" ri on rd.form_id::int = ri.id_rhomis_dataset::int and rd.row_id::int = ri.id_hh::int
) ,

----Calculating the fields relevant for indicator building
calculated_fields as 
(
select
*,
count(rd.assessment_quarter_date::date) OVER (PARTITION BY rd.assessment_quarter_date::date,rd.form_id) as quarter_count,
   (rd.crop_income_usd_per_year + rd.livestock_income_usd_per_year + rd.off_farm_income_usd_per_year) as total_income_per_year,
  (rd.crop_income_usd_per_year + rd.livestock_income_usd_per_year + rd.off_farm_income_usd_per_year + rd.ntfp_income_usd) as total_income_with_ntfp_per_year,
  rd.ntfp_income_usd as ntfp_income_per_year,
  rd.crop_income_usd_per_year as crop_income_per_year,
  rd.livestock_income_usd_per_year as livestock_income_per_year,
  rd.off_farm_income_usd_per_year as off_farm_income_per_year,
  case 
    when (rd.crop_income_usd_per_year + rd.livestock_income_usd_per_year + rd.off_farm_income_usd_per_year + rd.ntfp_income_usd) / nullif((rd.hh_size_mae * 365),0) <= 1.90 then true 
    else false 
    end as extreme_poverty,
  case 
    when (rd.crop_income_usd_per_year + rd.livestock_income_usd_per_year + rd.off_farm_income_usd_per_year + rd.ntfp_income_usd + rd.value_crop_consumed_usd_per_hh_per_year + rd.value_livestock_products_consumed_usd_per_hh_per_year + rd.value_ntfp_consumed_usd) / nullif((rd.hh_size_mae * 365),0) <= 1.90 then true 
    else false 
    end as extreme_poverty_TVA_incl, 
  case 
    when (rd.crop_consumed_calories_kcal_per_hh_per_year is null and rd.farm_products_consumed_calories_kcal_per_hh_per_year is null and 
    (rd.foodavailability + rd.ntfp_consumed_calories_kcal_per_hh_per_year) / (rd.hh_size_mae * 365) < 2500)
    or ((rd.crop_consumed_calories_kcal_per_hh_per_year + rd.farm_products_consumed_calories_kcal_per_hh_per_year + rd.ntfp_consumed_calories_kcal_per_hh_per_year) / (rd.hh_size_mae * 365) < 2500) then true 
    else false 
    end as below_calline,
  case 
    when (rd.crop_consumed_calories_kcal_per_hh_per_year is null and 
    (rd.foodavailability + rd.ntfp_consumed_calories_kcal_per_hh_per_year + rd.off_farm_income_usd_per_year*staple_crop_kcal_per_ppp + rd.livestock_income_usd_per_year*staple_crop_kcal_per_ppp +
    rd.crop_income_usd_per_year*staple_crop_kcal_per_ppp + rd.ntfp_income_usd*staple_crop_kcal_per_ppp) / (rd.hh_size_mae * 365) < 2500)
    or ((rd.crop_consumed_calories_kcal_per_hh_per_year + rd.farm_products_consumed_calories_kcal_per_hh_per_year + rd.ntfp_consumed_calories_kcal_per_hh_per_year + rd.off_farm_income_usd_per_year*staple_crop_kcal_per_ppp + rd.livestock_income_usd_per_year*staple_crop_kcal_per_ppp +
    rd.crop_income_usd_per_year*staple_crop_kcal_per_ppp + rd.ntfp_income_usd*staple_crop_kcal_per_ppp) / (rd.hh_size_mae * 365) < 2500) then true 
    else false 
    end as below_calline_potential,
  case 
    when rd.crop_consumed_calories_kcal_per_hh_per_year is null then rd.ntfp_consumed_calories_kcal_per_hh_per_year / nullif(coalesce(rd.foodavailability::float,0),0)
    else rd.ntfp_consumed_calories_kcal_per_hh_per_year / 
    nullif(coalesce(rd.crop_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.farm_products_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_consumed_calories_kcal_per_hh_per_year::float,0),0) 
    end as proportion_ntfp_in_diet,
  case 
    when rd.crop_consumed_calories_kcal_per_hh_per_year is null 
  then (rd.ntfp_consumed_calories_kcal_per_hh_per_year + rd.ntfp_income_usd*staple_crop_kcal_per_ppp) / nullif(coalesce(rd.foodavailability::float,0) + coalesce(rd.ntfp_income_usd*staple_crop_kcal_per_ppp::float,0)
    + rd.off_farm_income_usd_per_year*staple_crop_kcal_per_ppp + rd.livestock_income_usd_per_year*staple_crop_kcal_per_ppp + rd.crop_income_usd_per_year*staple_crop_kcal_per_ppp,0)
  else (rd.ntfp_consumed_calories_kcal_per_hh_per_year + rd.ntfp_income_usd*staple_crop_kcal_per_ppp) / 
    nullif(coalesce(rd.crop_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.farm_products_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(rd.ntfp_income_usd*staple_crop_kcal_per_ppp::float,0)
    + rd.off_farm_income_usd_per_year*staple_crop_kcal_per_ppp + rd.livestock_income_usd_per_year*staple_crop_kcal_per_ppp + rd.crop_income_usd_per_year*staple_crop_kcal_per_ppp,0) end
    as proportion_ntfp_in_diet_potential,
  coalesce ((case when rd.hfias_status='' then null else rd.hfias_status end), 
  (case when rd.fies_score::float >= 0 and rd.fies_score::float <=1 then 'Food Secure'
    when rd.fies_score::float > 1 and rd.fies_score::float <=3 then 'Mildly Food Insecure'
    when rd.fies_score::float >3 and rd.fies_score::float <=5 then 'Moderately Food Insecure'
    when rd.fies_score::float >5 and rd.fies_score::float <=8 then 'Severely Food Insecure'
    else null end)) as food_insecurity_status,
--    case when 
--      length(rd.biological_methods) + length(rd.gully_methods) + length(rd.soil_water_cons) >0 then true else false end
--      as uses_nrm_techniques,
    case when (case when biological_methods is null or biological_methods in ('None') or biological_methods  = '["None"]' then 0 else length(biological_methods) end) + (case when gully_methods is null or gully_methods in ('None') or gully_methods  = '["None"]' then 0 else length(gully_methods) end) + (case when soil_water_cons is null or soil_water_cons in ('None') or soil_water_cons  = '["None"]' then 0 else length(soil_water_cons) end) >0 then true else false end
      as uses_nrm_techniques,
    case when (case when biological_methods is null or biological_methods in ('None') or biological_methods  = '["None"]' then 0 else length(biological_methods) end) >0 then true else false end
      as uses_bio_techniques,
    case when (case when soil_water_cons is null or soil_water_cons in ('None') or soil_water_cons  = '["None"]' then 0 else length(soil_water_cons) end) >0 then true else false end
      as uses_swc_techniques,
    case when (case when gully_methods is null or gully_methods in ('None') or gully_methods  = '["None"]' then 0 else length(gully_methods) end) >0 then true else false end
      as uses_gully_techniques,
 (     

  coalesce(
  case 
  when access_permission in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when access_permission in ('little_access', 'moderate', 'lot' ) then 2
  when access_permission in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  +
  coalesce(
  case 
  when access_equality in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when access_equality in ('little_access', 'moderate', 'lot' ) then 2
  when access_equality in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  +
  coalesce(
  case 
  when village_engagement in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when village_engagement in ('little_access', 'moderate', 'lot' ) then 2
  when village_engagement in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  +
  coalesce(
  case 
  when forest_management_tools_yn in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when forest_management_tools_yn in ('little_access', 'moderate', 'lot' ) then 2
  when forest_management_tools_yn in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  +
  coalesce(
  case 
  when population_needs_met in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when population_needs_met in ('little_access', 'moderate', 'lot' ) then 2
  when population_needs_met in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  +
  coalesce(
  case 
  when protection_actions_yn in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when protection_actions_yn in ('little_access', 'moderate', 'lot' ) then 2
  when protection_actions_yn in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  +
  coalesce(
  case 
  when village_protection in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when village_protection in ('little_access', 'moderate', 'lot' ) then 2
  when village_protection in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  
  else null end,0)   
  
 )/ 21.0 as governance_score,
 ( 

  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_food = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_food = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_food = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_food = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_food = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_spending = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_spending = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_spending = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_spending = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_spending = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_crops = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_crops = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_crops = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_crops = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_crops = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_confidence = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_confidence = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_confidence = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_confidence = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_hh_confidence = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_speaking = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_speaking = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_speaking = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_speaking = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_speaking = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_meetings = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_meetings = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_meetings = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_meetings = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_meetings = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_activities = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_activities = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_activities = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_activities = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and voice_comm_activities = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_training = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_training = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_training = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_training = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_training = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_decisions = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_decisions = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_decisions = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_decisions = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_decisions = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_income_women = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_income_women = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_income_women = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_income_women = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_hh_income_women = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_market = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_market = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_market = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_market = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_market = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_committee = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_committee = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_committee = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_committee = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and choice_comm_committee = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_farm_land = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_farm_land = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_farm_land = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_farm_land = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_farm_land = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_comm_land = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_comm_land = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_comm_land = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_comm_land = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_comm_land = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_assets = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_assets = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_assets = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_assets = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_assets = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_livestock = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_livestock = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_livestock = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_livestock = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_livestock = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_trees = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_trees = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_trees = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_trees = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_trees = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_savings = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_savings = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_savings = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_savings = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_hh_savings = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_resources = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_resources = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_resources = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_resources = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_resources = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_leadership = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_leadership = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_leadership = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_leadership = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_leadership = 'more_than' then 4 
  else null end,0)   
  +
  coalesce(
  case
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_by_laws = 'none' then 1
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_by_laws = 'little' then 2
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_by_laws = 'moderate' then 2 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_by_laws = 'equal' then 3 
    when (rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female')) and rd.respondent_ntfp in ('same_person') or rd.respondent_ntfp in ('senior_woman','young_woman') and control_comm_by_laws = 'more_than' then 4 
  else null end,0)   
  
  ) / 21.0 as vcc_score,
 ( 

  coalesce(
  case
    when voice_hh_food = 'none' then 1
    when voice_hh_food = 'little' then 2
    when voice_hh_food = 'moderate' then 2 
    when voice_hh_food = 'equal' then 3 
    when voice_hh_food = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when voice_hh_spending = 'none' then 1
    when voice_hh_spending = 'little' then 2
    when voice_hh_spending = 'moderate' then 2 
    when voice_hh_spending = 'equal' then 3 
    when voice_hh_spending = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when voice_hh_crops = 'none' then 1
    when voice_hh_crops = 'little' then 2
    when voice_hh_crops = 'moderate' then 2 
    when voice_hh_crops = 'equal' then 3 
    when voice_hh_crops = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when voice_hh_confidence = 'none' then 1
    when voice_hh_confidence = 'little' then 2
    when voice_hh_confidence = 'moderate' then 2 
    when voice_hh_confidence = 'equal' then 3 
    when voice_hh_confidence = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when voice_comm_speaking = 'none' then 1
    when voice_comm_speaking = 'little' then 2
    when voice_comm_speaking = 'moderate' then 2 
    when voice_comm_speaking = 'equal' then 3 
    when voice_comm_speaking = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when voice_comm_meetings = 'none' then 1
    when voice_comm_meetings = 'little' then 2
    when voice_comm_meetings = 'moderate' then 2 
    when voice_comm_meetings = 'equal' then 3 
    when voice_comm_meetings = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when voice_comm_activities = 'none' then 1
    when voice_comm_activities = 'little' then 2
    when voice_comm_activities = 'moderate' then 2 
    when voice_comm_activities = 'equal' then 3 
    when voice_comm_activities = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when choice_hh_training = 'none' then 1
    when choice_hh_training = 'little' then 2
    when choice_hh_training = 'moderate' then 2 
    when choice_hh_training = 'equal' then 3 
    when choice_hh_training = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when choice_hh_decisions = 'none' then 1
    when choice_hh_decisions = 'little' then 2
    when choice_hh_decisions = 'moderate' then 2 
    when choice_hh_decisions = 'equal' then 3 
    when choice_hh_decisions = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when choice_hh_income_women = 'none' then 1
    when choice_hh_income_women = 'little' then 2
    when choice_hh_income_women = 'moderate' then 2 
    when choice_hh_income_women = 'equal' then 3 
    when choice_hh_income_women = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when choice_comm_market = 'none' then 1
    when choice_comm_market = 'little' then 2
    when choice_comm_market = 'moderate' then 2 
    when choice_comm_market = 'equal' then 3 
    when choice_comm_market = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when choice_comm_committee = 'none' then 1
    when choice_comm_committee = 'little' then 2
    when choice_comm_committee = 'moderate' then 2 
    when choice_comm_committee = 'equal' then 3 
    when choice_comm_committee = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_hh_farm_land = 'none' then 1
    when control_hh_farm_land = 'little' then 2
    when control_hh_farm_land = 'moderate' then 2 
    when control_hh_farm_land = 'equal' then 3 
    when control_hh_farm_land = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_hh_comm_land = 'none' then 1
    when control_hh_comm_land = 'little' then 2
    when control_hh_comm_land = 'moderate' then 2 
    when control_hh_comm_land = 'equal' then 3 
    when control_hh_comm_land = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_hh_assets = 'none' then 1
    when control_hh_assets = 'little' then 2
    when control_hh_assets = 'moderate' then 2 
    when control_hh_assets = 'equal' then 3 
    when control_hh_assets = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_hh_livestock = 'none' then 1
    when control_hh_livestock = 'little' then 2
    when control_hh_livestock = 'moderate' then 2 
    when control_hh_livestock = 'equal' then 3 
    when control_hh_livestock = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_hh_trees = 'none' then 1
    when control_hh_trees = 'little' then 2
    when control_hh_trees = 'moderate' then 2 
    when control_hh_trees = 'equal' then 3 
    when control_hh_trees = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_hh_savings = 'none' then 1
    when control_hh_savings = 'little' then 2
    when control_hh_savings = 'moderate' then 2 
    when control_hh_savings = 'equal' then 3 
    when control_hh_savings = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_comm_resources = 'none' then 1
    when control_comm_resources = 'little' then 2
    when control_comm_resources = 'moderate' then 2 
    when control_comm_resources = 'equal' then 3 
    when control_comm_resources = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_comm_leadership = 'none' then 1
    when control_comm_leadership = 'little' then 2
    when control_comm_leadership = 'moderate' then 2 
    when control_comm_leadership = 'equal' then 3 
    when control_comm_leadership = 'more_than' then 4 
 else null end,0)   
  +
  coalesce(
  case
    when control_comm_by_laws = 'none' then 1
    when control_comm_by_laws = 'little' then 2
    when control_comm_by_laws = 'moderate' then 2 
    when control_comm_by_laws = 'equal' then 3 
    when control_comm_by_laws = 'more_than' then 4 
 else null end,0)   
  
  ) / 21.0 as vcc_score_all,

  
coalesce(
case 
  when seeing in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when hearing in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when walking in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when memory in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when self_care in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when language in ('some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end,0)
  as disability_score,

  
coalesce(
case 
  when seeing in ('lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when hearing in ('lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when walking in ('lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when memory in ('lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when self_care in ('lot_difficulty', 'impossible') then 1
  else null end,0)
+  
coalesce(
case 
  when language in ('lot_difficulty', 'impossible') then 1
  else null end,0)
  as severely_disabled, 
case when biological_methods is null or biological_methods in ('None') or biological_methods  = '["None"]' then 0 else array_length(regexp_split_to_array(replace(replace(replace(replace(rd.biological_methods,'[',''),']',''),'"',''),',',''),' '),1) end as biological_methods_count,
case when gully_methods is null or gully_methods in ('None') or gully_methods  = '["None"]' then 0 else array_length(regexp_split_to_array(replace(replace(replace(replace(rd.gully_methods,'[',''),']',''),'"',''),',',''),' '),1) end as gully_methods_count,
case when rd.soil_water_cons is null or rd.soil_water_cons in ('None') or rd.soil_water_cons  = '["None"]' then 0 else array_length(regexp_split_to_array(replace(replace(replace(replace(rd.soil_water_cons,'[',''),']',''),'"',''),',',''),' '),1) end as soil_water_cons_count,
CASE 
    when rd.respondentsex in ('F','female','f','Female') or rd.beneficiary_gender in ('F','female','f','Female') then 'Female'
    when rd.respondentsex in ('M','male','m','Male') or rd.beneficiary_gender in ('M','male','m','Male') then 'Male'
    else 'Unknown' 
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
  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.total_income_per_year end as total_income_per_year,
+  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.total_income_with_ntfp_per_year end as total_income_with_ntfp_per_year,
+  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.ntfp_income_per_year end as ntfp_income_per_year,
+  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.crop_income_per_year end as crop_income_per_year,
+  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.livestock_income_per_year end as livestock_income_per_year,
+  
    case when cf.total_income_with_ntfp_per_year > 50000 then null else cf.off_farm_income_per_year end as off_farm_income_per_year,

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
cf.seeing,
cf.hearing,
cf.walking,
cf.memory,
cf.self_care,
cf.language as language_disability,
cf.survey_length_minutes,
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
cf.quality_rapport,
cf.quality_reliability,
cf.quality_rapport_resp2,
cf.quality_reliability_resp2,
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
and cf.form_id <> '636755' -- BAO removing MB6 midline
  );
  