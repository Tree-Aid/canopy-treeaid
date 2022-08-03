
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
        geoshape
        from {{ ref('land_surveys') }}
        where test='n'