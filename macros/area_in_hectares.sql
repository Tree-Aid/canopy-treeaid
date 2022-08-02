{% macro area_in_hectares(column_name) -%}
    {{ column_name}} / 10000
{%- endmacro %}