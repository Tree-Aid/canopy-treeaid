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
 initcap(replace(regexp_replace(nrm_category,'[^a-zA-Z,,_]','','g'),'_',' ')) as nrm_category,
 language,	
 language_others,	
 test,	
 initcap(replace(regexp_replace(soil_water_cons,'[^a-zA-Z,,_]','','g'),'_',' ')) as soil_water_cons,	
 initcap(replace(regexp_replace(gully_methods,'[^a-zA-Z,,_]','','g'),'_',' ')) as gully_methods
 from {{ ref('rhomis_surveys') }}
 where test is null or test='n'
 ),
 total_records as
 (
 select project_code, date_assessment::date, count(submission_id) over (partition by project_code order by date_assessment::date asc) as no_of_records from {{ ref('rhomis_surveys') }}  
 ),
 nrm_category as
 (
    select 
    submission_id,
    'Biological methods' as category,
    unnest(string_to_array(nrm_category,',')) as technique
    from rhomis
 ),
 soil_water as 
 (
    select 
    submission_id,
    'Soil and water conservation' as category,
    unnest(string_to_array(soil_water_cons,',')) as technique
    from rhomis 
 ),
 gully as 
 (
  select 
    submission_id,
    'Gully control' as category,
    unnest(string_to_array(gully_methods,',')) as technique
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
        ra.submission_id,
        initcap(replace(region,'_',' ')) as region,
        initcap(replace(province,'_',' ')) as province,
        initcap(replace(commune,'_',' ')) as commune,
        r.date_assessment,
        assessment_year,
        ra.category,
        replace(ra.technique,'_', ' ') as technique,
        no_of_records
        from restoration_activities ra
        left join rhomis r on ra.submission_id=r.submission_id
        left join total_records tr on r.date_assessment=tr.date_assessment and r.project_code=tr.project_code
   

