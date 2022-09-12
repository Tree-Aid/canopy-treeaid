{%- set forest_governance_fields= ['access_permission','access_equality' ,'village_engagement' ,'forest_management_tools_yn' ,'population_needs_met' ,
  'protection_actions_yn' ,'village_protection'] -%}

{%- set vcc_fields= ['voice_hh_food','voice_hh_spending','voice_hh_crops','voice_hh_confidence','voice_comm_speaking','voice_comm_meetings','voice_comm_activities','choice_hh_training',
'choice_hh_decisions','choice_hh_income_women','choice_comm_market','choice_comm_committee','control_hh_farm_land','control_hh_comm_land','control_hh_assets','control_hh_livestock',
'control_hh_trees','control_hh_savings','control_comm_resources','control_comm_leadership','control_comm_by_laws'] -%}

{%- set disability_fields= ['seeing','hearing','walking','memory','self_care','language'] -%}

with rhomis_data as 
(select 
row_id,	
form_name,
type,
timing,
country,
project_code,
form_id,
submission_id,
region,
province,
commune,
date_assessment,
biological_methods,
population_needs_met,
voice_hh_food,
voice_hh_spending,
voice_hh_crops,
voice_hh_confidence,
voice_comm_speaking,
voice_comm_meetings,
voice_comm_activities,
seeing,
seeing_others,
hearing,hearing_others,
walking,walking_others,
memory,memory_others,
self_care,self_care_others,
language,language_others,
test,access_equality,management_member,
access_permission,village_engagement,
soil_water_cons,gully_methods,choice_hh_income_women,
control_hh_farm_land,control_hh_comm_land,
control_hh_assets,control_hh_livestock,
control_hh_trees,control_hh_savings,control_comm_resources,
choice_comm_market,choice_comm_committee,control_comm_leadership,control_comm_by_laws,forest_management_tools_yn,protection_actions_yn,village_protection,respondentsex,choice_hh_training,choice_hh_decisions,respondent_ntfp,beneficiary_control,
ri.* 
from {{ref('stg_rhomis_data')}} rd 
left join {{ref('stg_rhomis_indicators')}} ri on rd.form_id::int = ri.id_rhomis_dataset::int and rd.row_id = ri.id_hh
)
select 
*,
  case when total_income_lcu_per_year + ntfp_income / nullif((hh_size_mae * 365),0) <= 1.90 then true else false end as extreme_poverty, 
  case when foodavailability / (hh_size_mae * 365) < 2500 then true else false end as below_calline, 
    ntfp_consumed_calories_kcal_per_hh_per_year / 
    nullif(coalesce(farm_products_consumed_calories_kcal_per_hh_per_year::float,0) + coalesce(ntfp_consumed_calories_kcal_per_hh_per_year::float,0),0)
    as proportion_ntfp_in_diet,
  coalesce (hfias_status , 
  case when fies_score < 2 then 'FoodSecure'
    when fies_score < 4 then 'MildlyFI'
    when fies_score < 6 then 'ModeratlyFI'
    when fies_score < 10 then 'SeverelyFI'
    else null end ) as food_insecurity_status,
    case when 
      length(biological_methods) + length(gully_methods) + length(soil_water_cons) >0 then true else false end
      as uses_nrm_techniques, 
 (     
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
 )/ 21.0 as governance_score,
 ( 
{% for field in vcc_fields %}
  case 
  when respondentsex in ('F','female') or respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'none' then 1
  when respondentsex in ('F','female') or respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'little' then 2
  when respondentsex in ('F','female') or respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'moderate' then 3 
  when respondentsex in ('F','female') or respondent_ntfp in ('senior_woman','young_woman') and {{field}} = 'more_than' then 4 
  else null end   {# assumes no fields are missing. if any field in the set is missing, skips the entire household #}
  {% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}
  ) / 21.0 as vcc_score,
{% for field in disability_fields %}  
case 
  when {{field}} in ('no_difficulty', 'some_difficulty', 'lot_difficulty', 'impossible') then 1
  else null end
{% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}  as disability_score,
{% for field in disability_fields %}  
case 
  when {{field}} in ('lot_difficulty', 'impossible') then 1
  else null end
{% if not loop.last -%}
    +
  {%- endif -%}
{% endfor %}  as severely_disabled,
array_length(regexp_split_to_array(replace(replace(replace(replace(biological_methods,'[',''),']',''),'"',''),',',''),' '),1) as biological_methods_count,
array_length(regexp_split_to_array(replace(replace(replace(replace(soil_water_cons,'[',''),']',''),'"',''),',',''),' '),1) as soil_water_cons_count,
array_length(regexp_split_to_array(replace(replace(replace(replace(gully_methods,'[',''),']',''),'"',''),',',''),' '),1) as gully_methods_count
from rhomis_data
where form_id is not null -- filters forms that don't have survey definitions yet
and ((test is null ) or (test not in ('y', 'Y','yes','Yes')) )