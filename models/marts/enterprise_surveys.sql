{# does not need to work for now, because there is no data, but it should #}
 
{% if 'select' in union_core_questions('Enterprise survey') %} 
{{union_core_questions('Enterprise survey')}} 
{% else %}
select 1 
{% endif %}

