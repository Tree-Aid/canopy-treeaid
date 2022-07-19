select * from {{ref('stg_core_questions_union')}}
where type = 'Land survey'

