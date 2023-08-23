
  
    

  create  table "tree_aid"."dbt_bokidi"."enterprise_surveys__dbt_tmp"
  
  
    as
  
  (
    with enterprise_surveys as
(
  

with core_questions as 
(



--find all the expected core fields for that form type    


--For all forms for a selected survey type



--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
552854::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        district::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_primary::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."gb8_vte_edp_survey_oct2020_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
556200::varchar as form_id, 
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
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary,
        NULL::varchar 
        as sales_turn_over_local_income,
        NULL::varchar 
        as sales_turn_over_national_income,
        NULL::varchar 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."bc1_vte_edp_survey_nov2020_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
556205::varchar as form_id, 
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
        beg_time::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as product_primary,
        NULL::varchar 
        as sales_turn_over_local_income,
        NULL::varchar 
        as sales_turn_over_national_income,
        NULL::varchar 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test,
        NULL::varchar 
        as group_costs_amount
-- appropriate from statement
    from onadata."bc1_vte_capacity_assessment_nov2020_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
574081::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        kebele::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as product_primary,
        NULL::varchar 
        as sales_turn_over_local_income,
        NULL::varchar 
        as sales_turn_over_national_income,
        NULL::varchar 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."eb3_eb8_vte_vegetables_edp_survey_jan2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
574083::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        province::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        kebele::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_primary::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."eb3_eb8_vte_edp_survey_jan2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
579084::varchar as form_id, 
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
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_raw::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary,
        NULL::varchar 
        as sales_turn_over_local_income,
        NULL::varchar 
        as sales_turn_over_national_income,
        NULL::varchar 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."gb1_vte_edp_survey_jan-mar2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
590257::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary,
        NULL::varchar 
        as sales_turn_over_local_income,
        NULL::varchar 
        as sales_turn_over_national_income,
        NULL::varchar 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."na4_vte_edp_survey_apr-jun2021_draft"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
592392::varchar as form_id, 
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
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."gb8_vte_edp_survey_apr-jun2021_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
629847::varchar as form_id, 
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
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_primary::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."gb8_vte_edp_survey_jan-mar2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
642305::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    
    _index::int as submission_index,
    
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as product_primary,
        NULL::varchar 
        as sales_turn_over_local_income,
        NULL::varchar 
        as sales_turn_over_national_income,
        NULL::varchar 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte,
        NULL::varchar 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."na6_vte_edp_survey_jan-mar2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
661432::varchar as form_id, 
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
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_primary::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."gb8_vte_edp_survey_apr-jun2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
662588::varchar as form_id, 
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
        date_interview::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_primary::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."mb6_vte_edp_survey_apr-jun2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
723107::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        product_primary::varchar    -- finds the item of the list that correspond to a rule 
        as product_primary, 
        sales_turn_over_local_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_local_income, 
        sales_turn_over_national_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_national_income, 
        sales_turn_over_international_income::varchar    -- finds the item of the list that correspond to a rule 
        as sales_turn_over_international_income, 
        group_vte::varchar    -- finds the item of the list that correspond to a rule 
        as group_vte, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        group_costs_amount::varchar    -- finds the item of the list that correspond to a rule 
        as group_costs_amount
-- appropriate from statement
    from onadata."mc4_product_value_chain_survey_jan-mar23"




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
where s.type = 'Enterprise survey'

 
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
 es.group_costs_amount,
 'Yes' as beneficiary_control,
 case -- add a test field to get test indicators BAO
    when ((es.test is null ) or (es.test not in ('y', 'Y','yes','Yes')) ) then false
    else true
end as test_check
 from enterprise_surveys es
 where es.form_id is not null  
 --and ((es.test is null) or (es.test not in ('y', 'Y','yes','Yes'))) -- BAO add a test field to get test indicators
  );
  