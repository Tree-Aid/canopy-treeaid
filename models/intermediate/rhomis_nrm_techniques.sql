with rhomis as 
 (
 select  
 form_name,
 type,
 timing,
 country,
 project_code,
 form_id,
 submission_id,
 region,
 province,
 commune,	
 date_assessment::date,
 extract('Year' from date_assessment::date) as assessment_year,
 regexp_replace(nrm_category,'[^a-zA-Z,,_,""]',' ','g') as nrm_category,
 language,	
 language_others,	
 test,	
 regexp_replace(soil_water_cons,'[^a-zA-Z,,_,""]',' ','g') as soil_water_cons,	
 regexp_replace(gully_methods,'[^a-zA-Z,,_,""]',' ','g') as gully_methods,
 count(submission_id) over (partition by project_code order by date_assessment::date asc) as no_of_records
 from {{ ref('rhomis_surveys') }}
 where test is null or test='n'
 ),
 nrm_category as
 (
    select 
    submission_id,
    'Biological' as category,
    unnest(string_to_array(nrm_category,' ')) as technique
    from rhomis
 ),
 soil_water as 
 (
    select 
    submission_id,
    'Soil and water conservation' as category,
    unnest(string_to_array(soil_water_cons,' ')) as technique
    from rhomis 
 ),
 gully as 
 (
  select 
    submission_id,
    'Gully control' as category,
    unnest(string_to_array(gully_methods,' ')) as technique
    from rhomis
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
        test,
        country,
        r.project_code,
        form_id,
        r.submission_id,
        initcap(replace(region,'_',' ')) as region,
        initcap(replace(province,'_',' ')) as province,
        initcap(replace(commune,'_',' ')) as commune,
        r.date_assessment,
        assessment_year,
        ra.category,
        trim(initcap(replace(replace(ra.technique,'_', ' '), 'Biological',''))) as technique,
        no_of_records
        from rhomis r
        left join restoration_activities ra on ra.submission_id=r.submission_id
        
   

