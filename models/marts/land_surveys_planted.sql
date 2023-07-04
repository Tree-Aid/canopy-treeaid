with data as
(
{{survey_type_table('Land survey', repeat='planted')}} 
)
-- set of fields from all  table
select
{{get_standard_columns('d','ls')}},
-- set of fields from child table
d.species,
d.number_planted,
d.number_regenerated,
ls.type_2,
TRUE as odk_source 
from data d
inner join {{ ref('land_surveys') }} ls on d.submission_id=ls.submission_id
where ls.test not in ('y', 'Y','yes','Yes') or ls.test is null
union all
select form_name, country, project_code, form_id, id::bigint, legacy_id::int, region, province, commune, date_assessment, assessment_year::int,to_timestamp(assessment_year_date,'YYYY-MM-DD HH:MI:SS'), beneficiary_control, species, number_planted, number_regenerated, type_2 
from {{ source('airbyte', 'trees_planted_legacy') }}


-- Gemma to add union to new sources once they have been created (e.g. trees_planted_legacy, using dbt union)
-- select * , FALSE as odk_source
--from {{scr('trees_planted_legacy')}}
--
