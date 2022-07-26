{% macro area_in_hectares(column_name) -%}
    (1.0 * {{ column_name}}) / 10000
{%- endmacro %}