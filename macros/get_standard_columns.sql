{% macro get_standard_columns() %}
        form_name,
        country,
        project_code,
        form_id,
        submission_id,
        initcap(replace(region,'_',' ')) as region,
        initcap(replace(province,'_',' ')) as province,
        initcap(replace(commune,'_',' ')) as commune,
        date_assessment,
        extract('Year' from date_assessment::date) as assessment_year
{% endmacro %}