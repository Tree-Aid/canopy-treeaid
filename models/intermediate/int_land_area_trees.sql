
select 
        lsp.timing,
        lsp.country,
        lsp.project_code,
        lsp.form_id,
        lsp.submission_id,
        -- ls.region,
        -- ls.province,
        -- ls.commune,
        -- ls.date_assessment,
        -- ls.gps_shape_area,
        -- ls.test,
        species,
        number_planted,
        number_regenerated
        -- ,
        -- geoshape
        from {{ ref('land_surveys_planted') }} lsp
        --left join {{ ref('land_surveys') }} ls on lsp.submission_id=ls.submission_id
        --where ls.test <>'y'
