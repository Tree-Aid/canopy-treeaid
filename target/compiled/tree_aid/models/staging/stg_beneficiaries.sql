----A union of the googlesheets and form data
----googlesheets_data 
(
select 
    case 
       when project like 'B%' then 'Burkina Faso' else country 
    end as country,
    region,
    province,
    district,
    village,
    partner,
   quarter_period,
   year,
project,
project_id,
beneficiary_name,
beneficiary_last_name,
beneficiary_first_name,
hhh_name,
hhh_last_name,
hhh_first_name,
beneficiary_gender,
beneficiary_yob,
beneficiary_age,
unique_id
from "tree_aid"."airbyte"."beneficiaries_list"
)
union all
----Form data 
(
select 
    country,
    region,
    province,
    district,
    village,
    partner,
    quarter_period,
    year,
    project,
    project_id,
    beneficiary_name,
    beneficiary_last_name,
    beneficiary_first_name,
    hhh_name,
    hhh_last_name,
    hhh_first_name,
    beneficiary_gender,
    beneficiary_yob::text,
    beneficiary_age::text,
    unique_id
from "tree_aid"."dbt_jane"."stg_beneficiaries_form_data"
)