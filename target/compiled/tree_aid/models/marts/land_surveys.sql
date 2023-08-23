with land_survey as
(
 

with core_questions as 
(



--find all the expected core fields for that form type    


--For all forms for a selected survey type



--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
567720::varchar as form_id, 
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
        collection_date::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        gps_shape_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods,
        NULL::varchar 
        as test, 
        gps_shape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."mb6_land_use_survey_jan2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
587716::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        gps_shape_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods,
        NULL::varchar 
        as test, 
        gps_shape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."mc1_perimeter_village_area_survey_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
589057::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment,
        NULL::varchar 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods,
        NULL::varchar 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."gc6_perimeter_village_area_survey_draft"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
592217::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods,
        NULL::varchar 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."gc6_perimeter_village_may2021_survey_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
593428::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."bb6_land_use_survey_apr-jun2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
605332::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."na6_land_use_survey_jul_sep2021"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
610315::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."mali_land_use_survey_final"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
631196::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."gc6_land_restoration_survey_oct-dec21"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
631214::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."gc8_perimeter_land_use_survey_oct-dec21"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
634119::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."mc1_perimeter_land_use_survey_oct-dec21"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
636142::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."mb9_land_restoration_survey_oct-dec21_meds"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
647207::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."bc3_land_restoration_survey_jan-mar22"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
662617::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."bb6_land_restoration_survey_apr-jun22"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
670712::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."gc9_perimeter_land_use_survey_may2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
670758::varchar as form_id, 
    id::bigint as submission_id,
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        region::varchar    -- finds the item of the list that correspond to a rule 
        as region,
        NULL::varchar 
        as province, 
        commune::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."mc1_perimeter_land_use_survey_senegal_may2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
673709::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."mc2_perimeter_land_use_june2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
694812::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."gc9_land_restoration_survey_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
696091::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."gc6_land_restoration_survey_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
696098::varchar as form_id, 
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
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."mc0_land_restoration_survey_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
696106::varchar as form_id, 
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
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        biological_methods::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        soil_water_cons_methods::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        biological_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        soil_water_cons_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        gully_methods::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        gully_proportion::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from onadata."mc2_land_restoration_survey_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
696156::varchar as form_id, 
     
    _id::bigint as submission_id,
    
    -- if _index in the actual table, add index if not add null
    NULL::int as submission_index,
-- loop through all the core fields, select the field with the appropriate name if present
 
        "group_survey/group_b__information_01/region"::varchar    -- finds the item of the list that correspond to a rule 
        as region, 
        "group_survey/group_b__formation_02/province"::varchar    -- finds the item of the list that correspond to a rule 
        as province, 
        "group_survey/group_b__formation_02/district"::varchar    -- finds the item of the list that correspond to a rule 
        as commune, 
        "group_survey/date_assessment"::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        "group_survey/group_g__olygon/calculate_area"::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area, 
        "group_survey/group_n__al/biological_methods"::varchar    -- finds the item of the list that correspond to a rule 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        "group_survey/group_gps/geoshape"::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape, 
        "group_survey/group_n__il_water_cons_methods"::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons, 
        "group_survey/group_n__biological_proportion"::varchar    -- finds the item of the list that correspond to a rule 
        as biological_proportion, 
        "group_survey/group_n__water_cons_proportion"::varchar    -- finds the item of the list that correspond to a rule 
        as soil_water_cons_proportion, 
        "group_survey/group_n__p_gully/gully_methods"::varchar    -- finds the item of the list that correspond to a rule 
        as gully_methods, 
        "group_survey/group_n__ully/gully_proportion"::varchar    -- finds the item of the list that correspond to a rule 
        as gully_proportion
-- appropriate from statement
    from airbyte."sbm_bc3_land_restoration_survey_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
696611::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."gc6_perimeter_land_use_survey_2022"

    union all


--find all the fields for the table associated with the form--find the core fields and how they are referenced in the specific form--- final query 
select 
697375::varchar as form_id, 
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
        date_assessment::varchar    -- finds the item of the list that correspond to a rule 
        as date_assessment, 
        calculate_area::varchar    -- finds the item of the list that correspond to a rule 
        as gps_shape_area,
        NULL::varchar 
        as biological_methods, 
        test::varchar    -- finds the item of the list that correspond to a rule 
        as test, 
        geoshape::varchar    -- finds the item of the list that correspond to a rule 
        as geoshape,
        NULL::varchar 
        as soil_water_cons,
        NULL::varchar 
        as biological_proportion,
        NULL::varchar 
        as soil_water_cons_proportion,
        NULL::varchar 
        as gully_methods,
        NULL::varchar 
        as gully_proportion
-- appropriate from statement
    from onadata."gd0_perimeter_land_use_survey_2022"




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
where s.type = 'Land survey'


)
select 
        ls.form_name,
        ls.country,
        ls.project_code,
        ls.form_id,
        ls.submission_id,
        initcap(replace(ls.region,'_',' ')) as region,
        initcap(replace(ls.province,'_',' ')) as province,
        initcap(replace(ls.commune,'_',' ')) as commune,
        ls.date_assessment,
        extract('Year' from ls.date_assessment::date) as assessment_year,
        date_trunc('year',ls.date_assessment::date) as assessment_year_date,
        ls.gps_shape_area as gps_shape_area_m2,
        gps_shape_area::FLOAT / 10000 as gps_shape_area_ha,
        ls.test,
        ls.geoshape,
        initcap(replace((replace(regexp_replace(ls.biological_methods,'[^a-zA-Z,,_]','','g'),'_',' ')),'Biological','')) as biological_methods,
        initcap(replace(regexp_replace(ls.soil_water_cons,'[^a-zA-Z,,_]','','g'),'_',' ')) as soil_water_cons,
        initcap(replace(regexp_replace(ls.gully_methods,'[^a-zA-Z,,_]','','g'),'_',' ')) as gully_methods,
        ls.type_2,
        'Yes' as beneficiary_control,
        case -- add a test field to get test indicators BAO
            when ((ls.test is null ) or (ls.test not in ('y', 'Y','yes','Yes')) ) then false
            else true
        end as test_check
    from land_survey ls
    where ls.form_id is not null -- filters forms that don't have survey definitions yet
    --and ((ls.test is null ) or (ls.test not in ('y', 'Y','yes','Yes')) ) -- BAO add a test field to get test indicators
    union all
    select form_name, country, project_code, form_id, legacy_id::int, region, province, commune, date_assessment, assessment_year::int,to_timestamp(assessment_year_date,'YYYY-MM-DD HH:MI:SS'), gps_shape_area_m2, gps_shape_area_ha::int, test, geoshape, biological_methods, soil_water_cons, gully_methods, type_2, beneficiary_control,
    case -- add a test field to get test indicators BAO
        when ((test is null ) or (test not in ('y', 'Y','yes','Yes')) ) then false
        else true
    end as test_check
    from "tree_aid"."airbyte"."land_area_legacy"