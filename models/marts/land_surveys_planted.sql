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
ls.type_2
from data d
inner join {{ ref('land_surveys') }} ls on d.submission_id=ls.submission_id
where ls.test not in ('y', 'Y','yes','Yes') or ls.test is null

-- union select * from {{src('trees_planted_legacy')}}
union select country, project_code, assessment_year, beneficiary_control, species, number_planted, number_regenerated, type_2 from {{ source('airbyte', 'trees_planted_legacy') }}