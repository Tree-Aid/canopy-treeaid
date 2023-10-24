
  
    

  create  table "tree_aid"."dbt_bokidi"."stg_rhomis_indicators__dbt_tmp"
  
  
    as
  
  (
    

-- select * from "tree_aid"."csv"."rhomis_indicators"
-- updated to Tree Aid Master Data source
select 
id_unique,	
id_hh,	
id_rhomis_dataset,
id_form,
id_proj,	
iso_country_code,
year::int,
currency_conversion_lcu_to_ppp::float,
currency_conversion_factor_year,	
survey_length_minutes,	
livestock_tlu::float,
hh_size_members::float,
hh_size_mae::float,
household_type,
head_education_level,
land_cultivated_ha::float,
land_owned_ha::float,
worst_food_security_month,
best_food_security_month,
hfias_status,
fies_score::float,
hdds_good_season::float,
hdds_good_season_bought::float,
hdds_good_season_farm::float,
hdds_bad_season::float,
hdds_bad_season_bought::float,
hdds_bad_season_farm::float,
hdds_last_month::float,
hdds_last_month_bought::float,
hdds_last_month_farm::float,
crop_income_lcu_per_year::float,
livestock_income_lcu_per_year::float,
total_income_lcu_per_year::float,
off_farm_income_lcu_per_year::float,
value_crop_consumed_lcu_per_hh_per_year::float,	
value_livestock_prod__d_lcu_per_hh_per_year::float as value_livestock_products_consumed_lcu_per_hh_per_year,	
value_farm_products___d_lcu_per_hh_per_year::float as value_farm_products_consumed_lcu_per_hh_per_year,
crop_consumed_calories_kcal_per_hh_per_year::float,
farm_products_consum___kcal_per_hh_per_year::float as farm_products_consumed_calories_kcal_per_hh_per_year,
staple_crop,
staple_crop_kcal_per_lcu::float,
foodavailability::float,
proportion_of_value_controlled_female_youth::float,
proportion_of_value_controlled_female_adult::float,
proportion_of_value_controlled_male_youth::float,
proportion_of_value_controlled_male_adult::float,
id,
ntfp_income::float,
value_ntfp_consumed::float,
ntfp_consumed_calories_kcal_per_hh_per_year::float,
firewood_consumed_kgs_per_hh_per_day::float,
nr_months_food_shortage::float,
beneficiary_gender
from "tree_aid"."airbyte"."rhomis_indicators"
  );
  