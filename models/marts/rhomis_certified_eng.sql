-- BAO Request to create separate dashboard source that has only certified projects
select 
*
from {{ref('rhomis_surveys')}} rd 
where rd.project_code in ('BB6', 'MB6', 'GC6', 'BC7', 'EC0/EC3','EC0')