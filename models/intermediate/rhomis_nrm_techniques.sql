 with nrm as 
 (
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
initcap(replace(replace(replace(replace(biological_methods,'[',''),']',''),'"',''),',','')) as biological_methods,
initcap(replace(replace(replace(replace(soil_water_cons,'[',''),']',''),'"',''),',','')) as soil_water_cons,
initcap(replace(replace(replace(replace(gully_methods,'[',''),']',''),'"',''),',','')) as gully_methods 
from {{ref('stg_rhomis_data')}}
where form_id is not null -- filters forms that don't have survey definitions yet
and ((test is null ) or (test not in ('y', 'Y','yes','Yes')) )
 ),
 biological as
 (
    select 
    submission_id,
    'Biological methods' as category,
    unnest(string_to_array(biological_methods,' ')) as technique
    from nrm
 ),
 soil_water as 
 (
    select 
    submission_id,
    'Soil and water conservation' as category,
    unnest(string_to_array(soil_water_cons,' ')) as technique
    from nrm
 ),
 gully as 
 (
  select 
    submission_id,
    'Gully control' as category,
    unnest(string_to_array(gully_methods,' ')) as technique
    from nrm  
 ),
 land_mngt as 
 (
select * from biological
union all
select * from soil_water
union all 
select * from gully
 )
 select 
form_name,
form_id,
nrm.submission_id,
project_code,
country,
region,
province,
commune,
date_assessment,
category,
replace(technique,'_',' ') as technique
from nrm
left join land_mngt lm on lm.submission_id=nrm.submission_id

