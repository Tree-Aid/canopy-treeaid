{% macro get_standard_columns(alias1,alias2) %}
"{{alias1}}".form_name,
"{{alias1}}".country,
"{{alias1}}".project_code,
"{{alias1}}".form_id,
"{{alias1}}".id,
"{{alias1}}".submission_id, --in this macro, submission id is collected from the first alias
"{{alias2}}".region,
"{{alias2}}".province,
"{{alias2}}".commune,
"{{alias2}}".date_assessment,
extract('Year' from "{{alias2}}".date_assessment::date) as assessment_year
{% endmacro %}


{% macro get_standard_columns_2(alias1,alias2) %}
"{{alias1}}".form_name,
"{{alias1}}".country,
"{{alias1}}".project_code,
"{{alias1}}".form_id,
"{{alias1}}".id,
"{{alias2}}".submission_id,--in this macro, submission id is collected from the second alias
"{{alias2}}".region,
"{{alias2}}".province,
"{{alias2}}".commune,
"{{alias2}}".date_assessment,
extract('Year' from "{{alias2}}".date_assessment::date) as assessment_year
{% endmacro %}