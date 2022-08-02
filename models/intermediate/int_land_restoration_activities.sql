 with land_data as 
 (
    select 
        timing,
        country,
        project_code,
        form_id,
        submission_id,
        region,
        province,
        commune,
        date_assessment,
        gps_shape_area,
        test,
        species,
        number_planted,
        number_regenerated,
        geoshape,
        nrm_category,
        biological_proportion,
        soil_water_cons,
        soil_water_cons_proportion,
        gully_methods,
        gully_proportion
    from dbt.land_surveys ls
 ),
 nrm_category as
 (
    select 
    submission_id,
    biological_proportion as proportion,
    'Biological methods' as category,
    unnest(string_to_array(nrm_category,' ')) as technique
    from land_data
 ),
 soil_water as 
 (
    select 
    submission_id,
    soil_water_cons_proportion as proportion,
    'Soil and water conservation' as category,
    unnest(string_to_array(soil_water_cons,' ')) as technique
    from land_data 
 ),
 gully as 
 (
  select 
    submission_id,
    gully_proportion as proportion,
    'Gully control' as category,
    unnest(string_to_array(gully_methods,' ')) as technique
    from land_data   
 ),
 restoration_activities as 
 (
select * from nrm_category
union all
select * from soil_water
union all 
select * from gully
 )
 select 
        timing,
        country,
        project_code,
        form_id,
        land_data.submission_id,
        region,
        province,
        commune,
        date_assessment,
        extract('Year' from date_assessment::date) as assessment_year,
        gps_shape_area as gps_shape_area_m2,
        {{area_in_hectares('gps_shape_area::FLOAT')}} as gps_shape_area_ha,
        ra.category,
        ra.proportion,
        ra.technique
        from restoration_activities ra
        left join land_data on ra.submission_id=land_data.submission_id
        where land_data.test='n'


