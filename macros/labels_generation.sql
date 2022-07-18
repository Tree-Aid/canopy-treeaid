{% macro labels_generation() %}

-- find all keys in xform:choices (FIELD NAME - long)
   {%- set form_json -%}
    (select 
    jsonb_object_keys(json -> 'xform:choices')
    from onadata.registry  order by 1 limit 1 )
    {%- endset -%}

    -- for each key, find all inside dictionary keys  (choices)
    {% for tablerow in run_query(form_json) %}   
    {{ log('Looping through: ' ~ tablerow, info=True) }}

        {# accessing the first value of the row, which is the only one. Unclear why we need to do this, but it works. Problem is that the run_query is returning a funky object #}
        {%- set list_option =  tablerow.values()[0] -%}  

        {%- set option_json -%}
            (select 
            jsonb_object_keys(json -> 'xform:choices' -> '{{list_option}}' )
            from (select * from onadata.registry  limit 1 ) form2  )
        {%- endset -%}
        {%- set choices = run_query(option_json) -%}

        --for each choice, find the language options 
        {%- for choice in choices  %}      
            {%- set choice_value = choice.values()[0] -%}
            {%- set label_language -%}
                (select 
                jsonb_object_keys(json -> 'xform:choices' -> '{{list_option}}' -> '{{choice_value}}' )
                from (select * from onadata.registry 
                limit 1 ) form3 )
            {%- endset -%}
            {%- set languages = run_query(label_language) -%}

            --for each language, store the language and value 
            {%- for language in languages -%}            
                {%- set language_value = language.values()[0] -%}
                (select 
                '{{list_option}}' as option_long,
                (string_to_array('{{list_option}}', '/'))[array_length(string_to_array('{{list_option}}', '/'),1)] as option, 
                '{{choice_value}}' as label, 
                '{{language_value}}' as language, 
                json -> 'xform:choices' -> '{{list_option}}' -> '{{choice_value}}' -> '{{language_value}}' as value
                from (select * from onadata.registry 
                limit 1 ) form4 )

                {% if not loop.last -%}
                union all 
                {%- endif -%}
            {% endfor %}
            {% if not loop.last and languages|length >0 -%}
            union all 
            {%- endif %}
        {% endfor -%}

        {% if not loop.last and choices|length > 0 -%}
        union all 
        {%- endif -%} 
    {% endfor %}
{% endmacro %} 
