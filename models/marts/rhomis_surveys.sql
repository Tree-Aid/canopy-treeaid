with rhomis_data as 
(
{{survey_type_table('Rhomis')}} 
),
rhomis_data_ordered as (
select row_number() over (partition by form_name order by submission_id) as row_id , * from rhomis_data
)

select * 
from rhomis_data_ordered rd 
left join {{ref('stg_rhomis_indicators')}} ri on rd.form_id::int = ri.id_rhomis_dataset::int and rd.row_id = ri.hh_id