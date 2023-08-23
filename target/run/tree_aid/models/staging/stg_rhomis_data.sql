
  create view "tree_aid"."dbt_bokidi"."stg_rhomis_data__dbt_tmp"
    
    
  as (
    -- what we're trying to do: 
-- 1. find using `survey_type_table('Rhomis')` the data that is not already present in  extended.rhomis_surveys 
-- 2. insert into extended.rhomis_survey the missing rows (if any)
-- 3. create view stg_rhomis_data as equivalent to extended.rhomis_survey

with rhomis_data as 
(
 

with core_questions as 
(



--find all the expected core fields for that form type    


--For all forms for a selected survey type



--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
220721::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present

        NULL::varchar 
        as region, 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        subregion::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."ethiopia_meki_2"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
229423::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present

        NULL::varchar 
        as region, 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        subregion::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."ethiopia_meki_2_extra"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
255992::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present

        NULL::varchar 
        as region,
        NULL::varchar 
        as province, 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp, 
        beneficiary::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."mb2_baseline"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
270181::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."burkina_ta_baseline_v1_3_webform"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
292240::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        community::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."gb1_ta_baseline_v1_3_3"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
298153::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."burkina_ta_bb1_v1_3_1_tablet"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
305636::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        subregion::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp, 
        beneficiary::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ethiopia_ea3_eb5_1_3_4"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
369679::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_ta::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rhomis_2_0_niger_na4"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
437605::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation2::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."eb8_2019"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
457632::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rhomis_gb8_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
463770::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as biological_methods,
        NULL::varchar 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."household_income_mtr_bc1"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
463771::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        survey_date::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as biological_methods,
        NULL::varchar 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        gender::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."voice_choice_control_mtr_bc1"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
469567::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_ta::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rhomis_na6_finale"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
490181::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        nrm_practice_grp_biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        forest_gov_module_population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        vcc_grp_voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        vcc_grp_voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        vcc_grp_voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        vcc_grp_voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        vcc_grp_voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        vcc_grp_voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        vcc_grp_voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        disability_grp_seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        disability_grp_seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        disability_grp_hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        disability_grp_hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        disability_grp_walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        disability_grp_walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        disability_grp_memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        disability_grp_memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        "disability_grp_self-care"::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        "disability_grp_self-care_others"::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        disability_grp_language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        disability_grp_language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        forest_gov_module_access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        forest_gov_module_management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        forest_gov_module_access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        forest_gov_module_village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        nrm_practice_grp_soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        nrm_practice_grp_gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        vcc_grp_choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        vcc_grp_control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        vcc_grp_control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        vcc_grp_control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        vcc_grp_control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        vcc_grp_control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        vcc_grp_control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        vcc_grp_control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        vcc_grp_choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        vcc_grp_choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        vcc_grp_control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        vcc_grp_control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_gov_module_forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        forest_gov_module_protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        forest_gov_module_village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        section_household_info_respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        vcc_grp_choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        vcc_grp_choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_control::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rho_mis_mb6_2020"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
500674::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present

        NULL::varchar 
        as region,
        NULL::varchar 
        as province, 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."mb2_rhomis_endline_april2020"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
547803::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        sublocation2::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rho_mis_bc1_endline_oct2020_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
551601::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rhomis_gc3_oct_2020"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
558686::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present

        NULL::varchar 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rhomis_eb3eb8_2020"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
564603::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rhomis_gb1_2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
583956::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province,
        NULL::varchar 
        as commune, 
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities_02::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods, 
        choice_hh_income_women_02::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market_02::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee_02::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws_02::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training_02::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions_02::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."bb6_gouvernance_forestière_vccx2_fev2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
600233::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province,
        NULL::varchar 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met,
        NULL::varchar 
        as voice_hh_food,
        NULL::varchar 
        as voice_hh_spending,
        NULL::varchar 
        as voice_hh_crops,
        NULL::varchar 
        as voice_hh_confidence,
        NULL::varchar 
        as voice_comm_speaking,
        NULL::varchar 
        as voice_comm_meetings,
        NULL::varchar 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods,
        NULL::varchar 
        as choice_hh_income_women,
        NULL::varchar 
        as control_hh_farm_land,
        NULL::varchar 
        as control_hh_comm_land,
        NULL::varchar 
        as control_hh_assets,
        NULL::varchar 
        as control_hh_livestock,
        NULL::varchar 
        as control_hh_trees,
        NULL::varchar 
        as control_hh_savings,
        NULL::varchar 
        as control_comm_resources,
        NULL::varchar 
        as choice_comm_market,
        NULL::varchar 
        as choice_comm_committee,
        NULL::varchar 
        as control_comm_leadership,
        NULL::varchar 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex,
        NULL::varchar 
        as choice_hh_training,
        NULL::varchar 
        as choice_hh_decisions,
        NULL::varchar 
        as respondent_ntfp, 
        beneficiary_ta::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."rhomis_treeaid_na4_endline_june2021_tele_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
620321::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_TA::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rhomis_na6_endline"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
625701::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        nrm_practice_grp_biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        forest_gov_module_population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        vcc_grp_voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        vcc_grp_voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        vcc_grp_voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        vcc_grp_voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        vcc_grp_voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        vcc_grp_voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        vcc_grp_voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        disability_grp_seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        disability_grp_seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        disability_grp_hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        disability_grp_hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        disability_grp_walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        disability_grp_walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        disability_grp_memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        disability_grp_memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        "disability_grp_self-care"::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        "disability_grp_self-care_others"::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        disability_grp_language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        disability_grp_language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        forest_gov_module_access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        forest_gov_module_management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        forest_gov_module_access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        forest_gov_module_village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        nrm_practice_grp_soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        nrm_practice_grp_gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        vcc_grp_choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        vcc_grp_choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        vcc_grp_control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        vcc_grp_control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        vcc_grp_control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        vcc_grp_control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        vcc_grp_control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        vcc_grp_control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        vcc_grp_choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        vcc_grp_choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        vcc_grp_control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        vcc_grp_control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_gov_module_forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        forest_gov_module_protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        forest_gov_module_village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        section_household_info_respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        vcc_grp_choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        vcc_grp_choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_control::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rho_mis_gc6_2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
626004::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        sublocation2::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rho_mis_bb6_oct_dec21"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
636755::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        cercle::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        start_time_user::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."mb6_income_agri_nrm_vcc_jan-mar22"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
648707::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        kebele::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_yn::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rhomis_eco_q1_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
666324::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        sublocation::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test,
        NULL::varchar 
        as access_equality,
        NULL::varchar 
        as management_member,
        NULL::varchar 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws,
        NULL::varchar 
        as forest_management_tools_yn,
        NULL::varchar 
        as protection_actions_yn,
        NULL::varchar 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."ta_rhomis_gb8_endline_jan-mar2021_consolidated"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
674658::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        self_care::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        self_care_others::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons,
        NULL::varchar 
        as gully_methods, 
        choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp,
        NULL::varchar 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rhomis_bc4_apr-jun22_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
697818::varchar as form_id, 
     
    _id::bigint as submission_id,
    
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        "SECTION_META/Location/region"::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        "SECTION_META/Location/province"::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        "SECTION_META/Location/district"::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        "SECTION_META/metadata/starttime_auto"::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        "survey_grp/nrm_pract__rp/biological_methods"::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        "survey_grp/forest_go__/population_needs_met"::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        "survey_grp/vcc_grp/v__e_group/voice_hh_food"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        "survey_grp/vcc_grp/v__oup/voice_hh_spending"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        "survey_grp/vcc_grp/v___group/voice_hh_crops"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        "survey_grp/vcc_grp/v__p/voice_hh_confidence"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        "survey_grp/vcc_grp/v__p/voice_comm_speaking"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        "survey_grp/vcc_grp/v__p/voice_comm_meetings"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        "survey_grp/vcc_grp/v__voice_comm_activities"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        "survey_grp/disability_grp/dis_grp1/seeing"::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        "survey_grp/disabilit__is_grp1/seeing_others"::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        "survey_grp/disability_grp/dis_grp2/hearing"::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        "survey_grp/disabilit__s_grp2/hearing_others"::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        "survey_grp/disability_grp/dis_grp3/walking"::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        "survey_grp/disabilit__s_grp3/walking_others"::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        "survey_grp/disability_grp/dis_grp4/memory"::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        "survey_grp/disabilit__is_grp4/memory_others"::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others, 
        "survey_grp/disabilit__rp/dis_grp5/self_care"::varchar    -- finds the item of the list that correspond to a rule 
        as self_care, 
        "survey_grp/disabilit__grp5/self_care_others"::varchar    -- finds the item of the list that correspond to a rule 
        as self_care_others, 
        "survey_grp/disability_grp/dis_grp6/language"::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        "survey_grp/disabilit___grp6/language_others"::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        "survey_grp/forest_go__v_grp/access_equality"::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        "survey_grp/forest_go__ols/management_member"::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        "survey_grp/forest_go__ion/access_permission"::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        "survey_grp/forest_go__rp/village_engagement"::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        "survey_grp/nrm_practice_grp/soil_water_cons"::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        "survey_grp/nrm_practice_grp/gully_control"::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        "survey_grp/vcc_grp/c__hoice_hh_income_women"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        "survey_grp/vcc_grp/c__/control_hh_farm_land"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        "survey_grp/vcc_grp/c__/control_hh_comm_land"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        "survey_grp/vcc_grp/c__oup/control_hh_assets"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        "survey_grp/vcc_grp/c__/control_hh_livestock"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        "survey_grp/vcc_grp/c__roup/control_hh_trees"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        "survey_grp/vcc_grp/c__up/control_hh_savings"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        "survey_grp/vcc_grp/c__ontrol_comm_resources"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        "survey_grp/vcc_grp/c__up/choice_comm_market"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        "survey_grp/vcc_grp/c__choice_comm_committee"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        "survey_grp/vcc_grp/c__ntrol_comm_leadership"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        "survey_grp/vcc_grp/c__/control_comm_by_laws"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        "survey_grp/forest_go__t_management_tools_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        "survey_grp/forest_go__protection_actions_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        "survey_grp/forest_go__ction_actions_village"::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        "survey_grp/SECTION_H__Details/respondentsex"::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        "survey_grp/vcc_grp/c__up/choice_hh_training"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        "survey_grp/vcc_grp/c__p/choice_hh_decisions"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        "survey_grp/respondent_ntfp"::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        "survey_grp/SECTION_H__ry_grp/beneficiary_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from airbyte."sbm_mc2_r_ho_mis__jul__sep22_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
704081::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        nrm_practice_grp_biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        forest_gov_module_population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        vcc_grp_voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        vcc_grp_voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        vcc_grp_voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        vcc_grp_voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        vcc_grp_voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        vcc_grp_voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        vcc_grp_voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities, 
        disability_grp_seeing::varchar    -- finds the item of the list that correspond to a rule 
        as seeing, 
        disability_grp_seeing_others::varchar    -- finds the item of the list that correspond to a rule 
        as seeing_others, 
        disability_grp_hearing::varchar    -- finds the item of the list that correspond to a rule 
        as hearing, 
        disability_grp_hearing_others::varchar    -- finds the item of the list that correspond to a rule 
        as hearing_others, 
        disability_grp_walking::varchar    -- finds the item of the list that correspond to a rule 
        as walking, 
        disability_grp_walking_others::varchar    -- finds the item of the list that correspond to a rule 
        as walking_others, 
        disability_grp_memory::varchar    -- finds the item of the list that correspond to a rule 
        as memory, 
        disability_grp_memory_others::varchar    -- finds the item of the list that correspond to a rule 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others, 
        disability_grp_language::varchar    -- finds the item of the list that correspond to a rule 
        as language, 
        disability_grp_language_others::varchar    -- finds the item of the list that correspond to a rule 
        as language_others,
        NULL::varchar 
        as test, 
        forest_gov_module_access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        forest_gov_module_management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        forest_gov_module_access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        forest_gov_module_village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        nrm_practice_grp_soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        nrm_practice_grp_gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        vcc_grp_choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        vcc_grp_control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        vcc_grp_control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        vcc_grp_control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        vcc_grp_control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        vcc_grp_control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        vcc_grp_control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        vcc_grp_control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        vcc_grp_choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        vcc_grp_choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        vcc_grp_control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        vcc_grp_control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_gov_module_forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        forest_gov_module_protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        forest_gov_module_village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        section_household_info_respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        vcc_grp_choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        vcc_grp_choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_control::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."mc3_rho_mis_oct-dec22_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
713115::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        starttime_auto::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        nrm_practice_grp_biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        forest_gov_module_population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        vcc_grp_voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        vcc_grp_voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        vcc_grp_voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        vcc_grp_voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        vcc_grp_voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        vcc_grp_voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        vcc_grp_voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        forest_gov_module_access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        forest_gov_module_management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        forest_gov_module_access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        forest_gov_module_village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        nrm_practice_grp_soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        nrm_practice_grp_gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        vcc_grp_choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        vcc_grp_control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        vcc_grp_control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        vcc_grp_control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        vcc_grp_control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        vcc_grp_control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        vcc_grp_control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        vcc_grp_control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        vcc_grp_choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        vcc_grp_choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        vcc_grp_control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        vcc_grp_control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_gov_module_forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        forest_gov_module_protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        forest_gov_module_village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        section_household_info_respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        vcc_grp_choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        vcc_grp_choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_control::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."tree_aid_rho_mis_bc3_oct-dec2022_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
732621::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as commune,
        NULL::varchar 
        as date_assessment, 
        nrm_practice_grp_biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        forest_gov_module_population_needs_met::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        section_food_security_voice_hh_food::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        section_food_security_voice_hh_spending::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        section_food_security_voice_hh_crops::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        section_food_security_voice_hh_confidence::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        section_food_security_voice_comm_speaking::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        section_food_security_voice_comm_meetings::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        section_food_security_voice_comm_activities::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        forest_gov_module_access_equality::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        forest_gov_module_management_member::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        forest_gov_module_access_permission::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission, 
        forest_gov_module_village_engagement::varchar    -- finds the item of the list that correspond to a rule 
        as village_engagement, 
        nrm_practice_grp_soil_water_cons::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        nrm_practice_grp_gully_control::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        section_food_security_choice_hh_income_women::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        section_food_security_control_hh_farm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        section_food_security_control_hh_comm_land::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        section_food_security_control_hh_assets::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        section_food_security_control_hh_livestock::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        section_food_security_control_hh_trees::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        section_food_security_control_hh_savings::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        section_food_security_control_comm_resources::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        section_food_security_choice_comm_market::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        section_food_security_choice_comm_committee::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        section_food_security_control_comm_leadership::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        section_food_security_control_comm_by_laws::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        forest_gov_module_forest_management_tools_yn::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        forest_gov_module_protection_actions_yn::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        forest_gov_module_village_protection::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        section_household_info_respondentsex::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        section_food_security_choice_hh_training::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        section_food_security_choice_hh_decisions::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        respondent_ntfp::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        beneficiary_control::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."ec0_mini_rho_mis_jan-mar2023_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
733793::varchar as form_id, 
     
    _id::bigint as submission_id,
    
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        "SECTION_META/Location/region"::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        "SECTION_META/Location/province"::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        "SECTION_META/Location/district"::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        "SECTION_META/metadata/starttime_auto"::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        "survey_grp/nrm_pract__rp/biological_methods"::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        "survey_grp/forest_go__/population_needs_met"::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        "survey_grp/vcc_grp/v__e_group/voice_hh_food"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        "survey_grp/vcc_grp/v__oup/voice_hh_spending"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        "survey_grp/vcc_grp/v___group/voice_hh_crops"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        "survey_grp/vcc_grp/v__p/voice_hh_confidence"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        "survey_grp/vcc_grp/v__p/voice_comm_speaking"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        "survey_grp/vcc_grp/v__p/voice_comm_meetings"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        "survey_grp/vcc_grp/v__voice_comm_activities"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        "survey_grp/forest_go__v_grp/access_equality"::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        "survey_grp/forest_go__ols/management_member"::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        "survey_grp/forest_go__ion/access_permission"::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        "survey_grp/nrm_practice_grp/soil_water_cons"::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        "survey_grp/nrm_practice_grp/gully_control"::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        "survey_grp/vcc_grp/c__hoice_hh_income_women"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        "survey_grp/vcc_grp/c__/control_hh_farm_land"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        "survey_grp/vcc_grp/c__/control_hh_comm_land"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        "survey_grp/vcc_grp/c__oup/control_hh_assets"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        "survey_grp/vcc_grp/c__/control_hh_livestock"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        "survey_grp/vcc_grp/c__roup/control_hh_trees"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        "survey_grp/vcc_grp/c__up/control_hh_savings"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        "survey_grp/vcc_grp/c__ontrol_comm_resources"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        "survey_grp/vcc_grp/c__up/choice_comm_market"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        "survey_grp/vcc_grp/c__choice_comm_committee"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        "survey_grp/vcc_grp/c__ntrol_comm_leadership"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        "survey_grp/vcc_grp/c__/control_comm_by_laws"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        "survey_grp/forest_go__t_management_tools_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        "survey_grp/forest_go__protection_actions_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        "survey_grp/forest_go__rp/village_protection"::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        "survey_grp/SECTION_H__Details/respondentsex"::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        "survey_grp/vcc_grp/c__up/choice_hh_training"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        "survey_grp/vcc_grp/c__p/choice_hh_decisions"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        "survey_grp/respondent_ntfp"::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        "SECTION_META/Location2/beneficiary_control"::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from airbyte."sbm_mb6_r_ho_mis_endline__apr__jun2023"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
733793::varchar as form_id, 
     
    _id::bigint as submission_id,
    
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        "SECTION_META/Location/region"::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        "SECTION_META/Location/province"::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        "SECTION_META/Location/district"::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        "SECTION_META/metadata/starttime_auto"::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        "survey_grp/nrm_pract__rp/biological_methods"::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        "survey_grp/forest_go__/population_needs_met"::varchar    -- finds the item of the list that correspond to a rule 
        as population_needs_met, 
        "survey_grp/vcc_grp/v__e_group/voice_hh_food"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_food, 
        "survey_grp/vcc_grp/v__oup/voice_hh_spending"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_spending, 
        "survey_grp/vcc_grp/v___group/voice_hh_crops"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_crops, 
        "survey_grp/vcc_grp/v__p/voice_hh_confidence"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_hh_confidence, 
        "survey_grp/vcc_grp/v__p/voice_comm_speaking"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_speaking, 
        "survey_grp/vcc_grp/v__p/voice_comm_meetings"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_meetings, 
        "survey_grp/vcc_grp/v__voice_comm_activities"::varchar    -- finds the item of the list that correspond to a rule 
        as voice_comm_activities,
        NULL::varchar 
        as seeing,
        NULL::varchar 
        as seeing_others,
        NULL::varchar 
        as hearing,
        NULL::varchar 
        as hearing_others,
        NULL::varchar 
        as walking,
        NULL::varchar 
        as walking_others,
        NULL::varchar 
        as memory,
        NULL::varchar 
        as memory_others,
        NULL::varchar 
        as self_care,
        NULL::varchar 
        as self_care_others,
        NULL::varchar 
        as language,
        NULL::varchar 
        as language_others,
        NULL::varchar 
        as test, 
        "survey_grp/forest_go__v_grp/access_equality"::varchar    -- finds the item of the list that correspond to a rule 
        as access_equality, 
        "survey_grp/forest_go__ols/management_member"::varchar    -- finds the item of the list that correspond to a rule 
        as management_member, 
        "survey_grp/forest_go__ion/access_permission"::varchar    -- finds the item of the list that correspond to a rule 
        as access_permission,
        NULL::varchar 
        as village_engagement, 
        "survey_grp/nrm_practice_grp/soil_water_cons"::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        "survey_grp/nrm_practice_grp/gully_control"::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        "survey_grp/vcc_grp/c__hoice_hh_income_women"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_income_women, 
        "survey_grp/vcc_grp/c__/control_hh_farm_land"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_farm_land, 
        "survey_grp/vcc_grp/c__/control_hh_comm_land"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_comm_land, 
        "survey_grp/vcc_grp/c__oup/control_hh_assets"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_assets, 
        "survey_grp/vcc_grp/c__/control_hh_livestock"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_livestock, 
        "survey_grp/vcc_grp/c__roup/control_hh_trees"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_trees, 
        "survey_grp/vcc_grp/c__up/control_hh_savings"::varchar    -- finds the item of the list that correspond to a rule 
        as control_hh_savings, 
        "survey_grp/vcc_grp/c__ontrol_comm_resources"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_resources, 
        "survey_grp/vcc_grp/c__up/choice_comm_market"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_market, 
        "survey_grp/vcc_grp/c__choice_comm_committee"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_comm_committee, 
        "survey_grp/vcc_grp/c__ntrol_comm_leadership"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_leadership, 
        "survey_grp/vcc_grp/c__/control_comm_by_laws"::varchar    -- finds the item of the list that correspond to a rule 
        as control_comm_by_laws, 
        "survey_grp/forest_go__t_management_tools_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as forest_management_tools_yn, 
        "survey_grp/forest_go__protection_actions_yn"::varchar    -- finds the item of the list that correspond to a rule 
        as protection_actions_yn, 
        "survey_grp/forest_go__rp/village_protection"::varchar    -- finds the item of the list that correspond to a rule 
        as village_protection, 
        "survey_grp/SECTION_H__Details/respondentsex"::varchar    -- finds the item of the list that correspond to a rule 
        as respondentsex, 
        "survey_grp/vcc_grp/c__up/choice_hh_training"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_training, 
        "survey_grp/vcc_grp/c__p/choice_hh_decisions"::varchar    -- finds the item of the list that correspond to a rule 
        as choice_hh_decisions, 
        "survey_grp/respondent_ntfp"::varchar    -- finds the item of the list that correspond to a rule 
        as respondent_ntfp, 
        "SECTION_META/Location2/beneficiary_control"::varchar    -- finds the item of the list that correspond to a rule 
        as beneficiary_control
-- appropriate from statement
    from onadata."sbm_mb6_r_ho_mis_endline__apr__jun2023"




)
select 
s.form_name,
s.type,
s.timing,
s.country,
s.project_code,
s.type_2,
cq.*
from "tree_aid"."dbt_bokidi"."stg_survey_master" s 
left join core_questions cq on s.form_id::int = cq.form_id::int   
where s.type = 'Rhomis'

 
)
select 
row_number() over (partition by form_name order by submission_id) as row_id, 
date_trunc('quarter',date_assessment::date) as assessment_quarter_date,
* 
from rhomis_data
  );