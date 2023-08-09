
  create view "tree_aid"."dbt_jane"."stg_core_questions_union__dbt_tmp"
    
    
  as (
    -- Creates a view of all the core questions for all surveys that have data in the database. 
-- Computes first the calculations for the non-repeat-group core questions, then for the repeat group ones. 

select 
    s.form_id::int,
    pt.schemaname, 
    pt.tablename,
    sd.question_name, 
    cq.name as core_question_name,
    cq.repeat_group_name,
    s.form_id_string,
    s.type,
    s.timing,
    s.type_2
from "tree_aid"."dbt_jane"."stg_survey_master" s 
inner join pg_catalog.pg_tables pt on trim(replace(lower(s.form_id_string), '-', '_')) = trim(replace(lower(pt.tablename), '-', '_'))  
    and pt.schemaname in ('onadata','airbyte') and pt.tableowner = 'tree_aid'
left join "tree_aid"."dbt_jane"."stg_survey_definitions_master" sd  on s.form_id::int = sd.form_id::int and sd.core_question_id is not null
inner join "tree_aid"."dbt_jane"."stg_core_questions_master" cq on sd.core_question_id = cq.id and cq.repeat_group_name is null 

union 

select 
    s.form_id::int,
    pt.schemaname, 
    pt.tablename,
    sd.question_name, 
    cq.name as core_question_name,
    cq.repeat_group_name,
    s.form_id_string,
    s.type,
    s.timing,
    s.type_2
from "tree_aid"."dbt_jane"."stg_survey_master" s 
left join "tree_aid"."dbt_jane"."stg_survey_definitions_master" sd  on s.form_id::int = sd.form_id::int and sd.core_question_id is not null
inner join "tree_aid"."dbt_jane"."stg_core_questions_master" cq on sd.core_question_id = cq.id and repeat_group_name is not null 
inner join pg_catalog.pg_tables pt on 
    position( replace(lower(s.form_id_string), '-', '_') in replace(lower(pt.tablename), '-', '_') ) >0  --messy matching. Checking if the tablename contains the 'form_id_string' but also the 'repeat_group_name'
    and pt.schemaname in ('onadata','airbyte') and pt.tableowner = 'tree_aid'
    and right(tablename, length(tablename) - position ('_repeat' in tablename) - 7 ) = cq.repeat_group_name
  );