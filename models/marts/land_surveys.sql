with land_survey as
(
{{survey_type_table('Land survey')}}
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
        {{area_in_hectares('gps_shape_area::FLOAT')}} as gps_shape_area_ha,
        ls.test,
        ls.geoshape,
        initcap(replace((replace(regexp_replace(ls.biological_methods,'[^a-zA-Z,,_]','','g'),'_',' ')),'Biological','')) as biological_methods,
        initcap(replace(regexp_replace(ls.soil_water_cons,'[^a-zA-Z,,_]','','g'),'_',' ')) as soil_water_cons,
        initcap(replace(regexp_replace(ls.gully_methods,'[^a-zA-Z,,_]','','g'),'_',' ')) as gully_methods,
        ls.type_2,
        'Yes' as beneficiary_control
    from land_survey ls
    where ls.form_id is not null -- filters forms that don't have survey definitions yet
    and ((ls.test is null ) or (ls.test not in ('y', 'Y','yes','Yes')) )
    union all
    select form_name, country, project_code, form_id, legacy_id::int, region, province, commune, date_assessment, assessment_year::int,to_timestamp(assessment_year_date,'YYYY-MM-DD HH:MI:SS'), gps_shape_area_m2, gps_shape_area_ha::FLOAT, test, geoshape, biological_methods, soil_water_cons, gully_methods, type_2, beneficiary_control from {{ source('airbyte', 'land_area_legacy') }}