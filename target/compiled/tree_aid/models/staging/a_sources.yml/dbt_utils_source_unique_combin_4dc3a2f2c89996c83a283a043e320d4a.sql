





with validation_errors as (

    select
        id_rhomis_dataset, id_hh
    from "tree_aid"."airbyte"."rhomis_indicators"
    group by id_rhomis_dataset, id_hh
    having count(*) > 1

)

select *
from validation_errors


