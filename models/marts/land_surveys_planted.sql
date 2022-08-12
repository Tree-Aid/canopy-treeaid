with data as
(
{{survey_type_table('Land survey', repeat='planted')}} 
)
select
d.form_name,
d.country,
d.project_code,
d.form_id,
d.id,
d.submission_id,
initcap(replace(ls.region,'_',' ')) as region,
initcap(replace(ls.province,'_',' ')) as province,
initcap(replace(ls.commune,'_',' ')) as commune,
ls.date_assessment,
extract('Year' from ls.date_assessment::date) as assessment_year,
d.species,
d.number_planted,
d.number_regenerated
from data d
left join {{ ref('land_surveys') }} ls on d.submission_id=ls.submission_id
where ls.test <>'y'

