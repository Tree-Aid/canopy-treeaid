 with land_data as 
 (  
 {{union_core_questions('Land survey')}}
 ),
 data as 
 (
select 
  row_number() over () as unique_id,
  * 
 from land_data
 ),
 nrm_category as
 (
    select 
    unique_id,
    'Biological methods' as category,
    unnest(string_to_array(nrm_category,' ')) as technique
    from data
 ),
 soil_water as 
 (
    select 
    unique_id,
    'Soil and water conservation' as category,
    unnest(string_to_array(soil_water_cons,' ')) as technique
    from data 
 ),
 gully as 
 (
  select 
    unique_id,
    'Gully control' as category,
    unnest(string_to_array(gully_methods,' ')) as technique
    from data   
 ),
 restoration_activities as 
 (
select * from nrm_category
union all
select * from soil_water
union all 
select * from gully
 )
 select 
 d.unique_id,
 d.test,
 d.form_id,
 d.country,
 d.region,
 d.province,
 d.commune, 
 d.project,
 extract('Year' from d.date_assessment::date) as assessment_year,
 d.date_assessment,
 d.gps_shape_area as gps_shape_area_m2,
 d.gps_shape_area /10000 as gps_shape_area_ha,
 d.geoshape,
 ra.category,
 ra.technique
 from restoration_activities ra
 left join data d on ra.unique_id=d.unique_id


