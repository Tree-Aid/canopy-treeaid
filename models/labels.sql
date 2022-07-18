{{  config(
    materialized = "table"  ) }}

--should run only if there is no good enough data already. Check if there is a new version of the labels or something similar. Logic to review 

{# 
{{labels_generation()}}
#}