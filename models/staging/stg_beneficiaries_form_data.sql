select 
{{ dbt_utils.star(from=source('airbyte', 'sbm_beneficiary_list_1'), 
    except=[  "_airbyte_ab_id",  "_airbyte_emitted_at",  "_airbyte_normalized_at",  "_airbyte_beneficiary_list_hashid"]) }}
from {{source('airbyte', 'sbm_beneficiary_list_1')}}
