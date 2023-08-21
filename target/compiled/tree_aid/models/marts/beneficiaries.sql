select  
   sb.*,
   case 
      when sb.year= 'n/a' then null else sb.year::DOUBLE PRECISION 
   end as assessment_year, 
   case 
      when sb.year is null then null 
      when sb.year ='n/a' then null else concat(year,'-','01','-01')::date 
   end as assessment_year_date,
   'Yes' as beneficiary_control 
from "tree_aid"."dbt_jane"."stg_beneficiaries" sb