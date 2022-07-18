{% macro labels_generation2() %}


-- find all keys in xform:choices (FIELD NAME - long)
   {% set form_labels %}
        (select
            (json -> 'xform:choices') 
            from (select * from onadata.registry 
            limit 1 ) form1 
        )
    {% endset %}

    -- for each key, find all inside dictionary keys  (list)

    {% for tablerow in run_query(form_labels) %}
        {{tablerow.from_json() }}
    {% endfor %}
--from_json
{% endmacro %}