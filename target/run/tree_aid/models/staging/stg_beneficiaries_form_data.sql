
  create view "tree_aid"."dbt_bokidi"."stg_beneficiaries_form_data__dbt_tmp"
    
    
  as (
    select 


    "country",
  "_xform_id_string",
  "year",
  "_review_comment",
  "_tags",
  "project",
  "_review_status",
  "beneficiary_first_name",
  "_xform_id",
  "_total_media",
  "_attachments",
  "beneficiary_name",
  "province",
  "project_id",
  "_submission_time",
  "_duration",
  "_notes",
  "village",
  "_version",
  "formhub/uuid",
  "_date_modified",
  "_geolocation",
  "beneficiary_last_name",
  "unique_id",
  "meta/instanceID",
  "_media_count",
  "beneficiary_age",
  "hhh_name",
  "_uuid",
  "_submitted_by",
  "_status",
  "_media_all_received",
  "hhh_last_name",
  "beneficiary_gender",
  "_bamboo_dataset_id",
  "_edited",
  "partner",
  "hhh_first_name",
  "district",
  "_id",
  "quarter_period",
  "region",
  "beneficiary_yob",
  "_airbyte_sbm_beneficiary_list_1_hashid"
from "tree_aid"."airbyte"."sbm_beneficiary_list_1"
  );