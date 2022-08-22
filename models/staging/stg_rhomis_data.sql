with rhomis_data as 
(
{{survey_type_table('Rhomis')}} 
)
select 
row_number() over (partition by form_name order by submission_id) as row_id , 
* 
from rhomis_data