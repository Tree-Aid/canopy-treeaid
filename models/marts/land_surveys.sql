with land_survey as
(
{{survey_type_table('Land survey')}}
)
select 
        form_name,
        country,
        project_code,
        form_id,
        submission_id,
        initcap(replace(region,'_',' ')) as region,
        initcap(replace(province,'_',' ')) as province,
        initcap(replace(commune,'_',' ')) as commune,
        date_assessment,
        extract('Year' from date_assessment::date) as assessment_year,
        gps_shape_area as gps_shape_area_m2,
        {{area_in_hectares('gps_shape_area::FLOAT')}} as gps_shape_area_ha,
        test,
        geoshape,
        initcap(replace((replace(regexp_replace(biological_methods,'[^a-zA-Z,,_]','','g'),'_',' ')),'Biological','')) as biological_methods,
        initcap(replace(regexp_replace(soil_water_cons,'[^a-zA-Z,,_]','','g'),'_',' ')) as soil_water_cons,
        initcap(replace(regexp_replace(gully_methods,'[^a-zA-Z,,_]','','g'),'_',' ')) as gully_methods
    from land_survey
    where form_id is not null -- filters forms that don't have survey definitions yet
    and ((test is null ) or (test not in ('y', 'Y','yes','Yes')) )