{%- set forest_governance_fields= ['access_permission','access_equality' ,'village_engagement' ,'forest_management_tools_yn' ,'population_needs_met' ,
  'protection_actions_yn' ,'village_protection'] -%}

{%- set vcc_fields= ['voice_hh_food','voice_hh_spending','voice_hh_crops','voice_hh_confidence','voice_comm_speaking','voice_comm_meetings','voice_comm_activities','choice_hh_training',
'choice_hh_decisions','choice_hh_income_women','choice_comm_market','choice_comm_committee','control_hh_farm_land','control_hh_comm_land','control_hh_assets','control_hh_livestock',
'control_hh_trees','control_hh_savings','control_comm_resources','control_comm_leadership','control_comm_by_laws'] -%}

with rhomis_data as 
(select * 
from {{ref('stg_rhomis_data')}} rd 
left join {{ref('stg_rhomis_indicators')}} ri on rd.form_id::int = ri.id_rhomis_dataset::int and rd.row_id = ri.id_hh
)
select 
*,
  case when total_income_lcu_per_year + ntfp_income / (hh_size_mae * 365) <= 1.90 then true else false end as extreme_poverty, 
  case when foodavailability / (hh_size_mae * 365) < 2500 then true else false end as below_calline, 
    ntfp_consumed_calories_kcal_per_hh_per_year / 
    greatest((farm_products_consumed_calories_kcal_per_hh_per_year::float + ntfp_consumed_calories_kcal_per_hh_per_year),1)
    as proportion_ntfp_in_diet,
  coalesce (hfias_status , 
  case when fies_score < 2 then 'FoodSecure'
    when fies_score < 4 then 'MildlyFI'
    when fies_score < 6 then 'ModeratlyFI'
    when fies_score < 10 then 'SeverelyFI'
    else null end ) as food_insecurity_status,
    case when 
      length(nrm_category) + length(gully_methods) + length(soil_water_cons) >0 then true else false end
      as uses_nrm_techniques, 
{% for field in forest_governance_fields %}
  case 
  when {{field}} in ('Y', 'equal_access', 'very_well', 'yes','completely') then 3
  when {{field}} in ('little_access', 'moderate', 'lot' ) then 2
  when {{field}} in ('little', 'N','no', 'no_access', 'do_not_know', 'not') then 1  {# assumes not know = 1 #}
  else null end   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
 / 21.0 as governance_score, 
{% for field in vcc_fields %}
  case 
  when respondentsex in ('F','female') and {{field}} = 'none' then 1
  when respondentsex in ('F','female') and {{field}} = 'little' then 2
  when respondentsex in ('F','female') and {{field}} = 'moderate' then 3 
  when respondentsex in ('F','female') and {{field}} = 'more_than' then 4 
  else null end   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
  as vcc_score,
null::int as disability_score {#2022.08.17 AP  this is missing because we do not have examples yet#}
from rhomis_data