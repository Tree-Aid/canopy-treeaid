

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
livestock_consumed_c___kcal_per_hh_per_year::float as livestock_consumed_calories_kcal_per_hh_per_year,
staple_crop,
staple_crop_kcal_per_lcu::float,
staple_crop_price_lcu_per_kg::float,
staple_crop_kcal_per_kg::float,
foodavailability::float,
proportion_of_value_controlled_female_youth::float,
proportion_of_value_controlled_female_adult::float,
proportion_of_value_controlled_female_head::float,
proportion_of_value_controlled_male_youth::float,
proportion_of_value_controlled_male_adult::float,
proportion_of_value_controlled_male_head::float,
id,
ntfp_income::float,
value_ntfp_consumed::float,
ntfp_consumed_calories_kcal_per_hh_per_year::float,
firewood_consumed_kgs_per_hh_per_day::float,
nr_months_food_shortage::float,
beneficiary_gender,
total_income_w_ntfp_usd_per_year::float,
case 
    when year::int <= 2022 and crop_income_usd_per_year is null then crop_income_usd_per_year::float 
    when year::int <= 2022 then crop_income_usd_per_year::float 
    else crop_income_lcu_per_year::float/currency_conversion_lcu_to_ppp::float 
    end as crop_income_usd_per_year,
case 
    when year::int <= 2022 and livestock_income_usd_per_year is null then livestock_income_lcu_per_year::float/currency_conversion_lcu_to_ppp::float
    when year::int <= 2022 then livestock_income_usd_per_year::float
    else livestock_income_lcu_per_year::float/currency_conversion_lcu_to_ppp::float 
    end as livestock_income_usd_per_year,
case 
    when year::int <= 2022 and off_farm_income_usd_per_year is null then off_farm_income_lcu_per_year::float/currency_conversion_lcu_to_ppp::float
    when year::int <= 2022 then off_farm_income_usd_per_year::float
    else off_farm_income_lcu_per_year::float/currency_conversion_lcu_to_ppp::float  
    end as off_farm_income_usd_per_year,
case 
    when year::int <= 2022 and value_crop_consumed_usd_per_hh_per_year is null then value_crop_consumed_lcu_per_hh_per_year::float/currency_conversion_lcu_to_ppp::float
    when year::int <= 2022 then value_crop_consumed_usd_per_hh_per_year::float
    else value_crop_consumed_lcu_per_hh_per_year::float/currency_conversion_lcu_to_ppp::float 
    end as value_crop_consumed_usd_per_hh_per_year,	
case 
    when year::int <= 2022 and value_livestock_prod__d_usd_per_hh_per_year is null then value_livestock_prod__d_lcu_per_hh_per_year::float/currency_conversion_lcu_to_ppp::float 
    when year::int <= 2022 then value_livestock_prod__d_usd_per_hh_per_year::float
    else value_livestock_prod__d_lcu_per_hh_per_year::float/currency_conversion_lcu_to_ppp::float 
    end as value_livestock_products_consumed_usd_per_hh_per_year,	
case 
    when year::int <= 2022 and value_farm_products___d_usd_per_hh_per_year is null then value_farm_products___d_lcu_per_hh_per_year::float/currency_conversion_lcu_to_ppp::float
    when year::int <= 2022 then value_farm_products___d_usd_per_hh_per_year::float
    else value_farm_products___d_lcu_per_hh_per_year::float/currency_conversion_lcu_to_ppp::float 
    end as value_farm_products_consumed_usd_per_hh_per_year,
case 
    when year::int <= 2022 and ntfp_income_usd is null then ntfp_income::float/currency_conversion_lcu_to_ppp::float
    when year::int <= 2022 then ntfp_income_usd::float
    else ntfp_income::float/currency_conversion_lcu_to_ppp::float 
    end ntfp_income_usd,	
case 
    when year::int <= 2022 and value_ntfp_consumed_usd is null then value_ntfp_consumed::float/currency_conversion_lcu_to_ppp::float
    when year::int <= 2022 then value_ntfp_consumed_usd::float
    else value_ntfp_consumed::float/currency_conversion_lcu_to_ppp::float 
    end value_ntfp_consumed_usd,
case 
    when staple_crop_kcal_per_lcu is null then staple_crop_kcal_per_kg::float/(staple_crop_price_lcu_per_kg::float/currency_conversion_lcu_to_ppp::float)
    else staple_crop_kcal_per_lcu::float*currency_conversion_lcu_to_ppp::float
    end as staple_crop_kcal_per_ppp
from "tree_aid"."airbyte"."rhomis_indicators"