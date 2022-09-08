 with land_data as 
 (
 select * from {{ ref('land_surveys') }}
 ),
 nrm_category as
 (
    select 
    submission_id,
    'Biological methods' as category,
    unnest(string_to_array(biological_methods,',')) as technique
    from land_data
 ),
 soil_water as 
 (
    select 
    submission_id,
    'Soil and water conservation' as category,
    unnest(string_to_array(soil_water_cons,',')) as technique
    from land_data 
 ),
 gully as 
 (
  select 
    submission_id,
    'Gully control' as category,
    unnest(string_to_array(gully_methods,',')) as technique
    from land_data   
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
        form_name,
        country,
        project_code,
        form_id,
        ra.submission_id,
        region,
        province,
        commune,
        date_assessment,
        assessment_year,
        ra.category,
        replace(replace(replace(ra.technique,'_', ' '),'Biological',''),'Swc','') as technique
        from restoration_activities ra
        left join land_data on ra.submission_id=land_data.submission_id
   


