with initial_agg as (
    select
        country,
        project_code,
        -- beneficiary_control,
        timing,
        avg(coalesce(total_income_with_ntfp_per_year,0)) as mean_total_income_with_ntfp_per_year,
        percentile_cont(0.5) within group (order by coalesce(total_income_with_ntfp_per_year,0)) as median_total_income_with_ntfp_per_year,
        avg(coalesce(ntfp_income_per_year,0)) as mean_ntfp_income_per_year,
        percentile_cont(0.5) within group (order by coalesce(ntfp_income_per_year,0)) as median_ntfp_income_per_year,
        avg(coalesce(crop_income_per_year,0)) as mean_crop_income_per_year,
        percentile_cont(0.5) within group (order by coalesce(crop_income_per_year,0)) as median_crop_income_per_year,
        avg(coalesce(livestock_income_per_year,0)) as mean_livestock_income_per_year,
        percentile_cont(0.5) within group (order by coalesce(livestock_income_per_year,0)) as median_livestock_income_per_year,
        avg(coalesce(off_farm_income_per_year,0)) as mean_off_farm_income_per_year,
        percentile_cont(0.5) within group (order by coalesce(off_farm_income_per_year,0)) as median_off_farm_income_per_year,
        ((count(distinct submission_id) filter (where extreme_poverty = 'true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as below_poverty_line,
        ((count(distinct submission_id) filter (where extreme_poverty_TVA_incl = 'true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as below_poverty_line_tva,
        ((count(distinct submission_id) filter (where below_calline = 'true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as below_calorie_line,
        ((count(distinct submission_id) filter (where below_calline_potential = 'true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as below_calorie_line_potential,
        avg(proportion_ntfp_in_diet*100) as proportion_ntfp_in_diet,
        avg(proportion_ntfp_in_diet_potential*100) as proportion_ntfp_in_diet_potential,
        ((count(distinct submission_id) filter (where uses_nrm_techniques='true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as proportion_uses_nrm_techniques,
        ((count(distinct submission_id) filter (where uses_bio_techniques='true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as proportion_uses_bio_techniques,
        ((count(distinct submission_id) filter (where uses_swc_techniques='true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as proportion_uses_swc_techniques,
        ((count(distinct submission_id) filter (where uses_gully_techniques='true'))::FLOAT / nullif(count(distinct submission_id)::float,0))*100 as proportion_uses_gully_techniques
    from {{ ref('rhomis_surveys') }}
    where test_check = 'False'
    group by 1,2,3 -- ,4

), indicator_nesting as (
    select
        country,
        project_code,
        -- beneficiary_control,
        timing,
        unnest(array[
            'mean_total_income',
            'median_total_income',
            'mean_ntfp_income',
            'median_ntfp_income',
            'mean_crop_income',
            'median_crop_income',
            'mean_livestock_income',
            'median_livestock_income',
            'mean_off_farm_income',
            'median_off_farm_income',
            'below_poverty_line',
            'below_poverty_line_tva',
            'below_calorie_line',
            'below_calorie_line_potential',
            'proportion_ntfp_in_diet',
            'proportion_ntfp_in_diet_potential',
            'proportion_uses_nrm_techniques',
            'proportion_uses_bio_techniques',
            'proportion_uses_swc_techniques',
            'proportion_uses_gully_techniques']) AS rhomis_indicator,
        unnest(array[
            mean_total_income_with_ntfp_per_year,
            median_total_income_with_ntfp_per_year,
            mean_ntfp_income_per_year,
            median_ntfp_income_per_year,
            mean_crop_income_per_year,
            median_crop_income_per_year,
            mean_livestock_income_per_year,
            median_livestock_income_per_year,
            mean_off_farm_income_per_year,
            median_off_farm_income_per_year,
            below_poverty_line,
            below_poverty_line_tva,
            below_calorie_line, 
            below_calorie_line_potential,
            proportion_ntfp_in_diet, 
            proportion_ntfp_in_diet_potential,
            proportion_uses_nrm_techniques,
            proportion_uses_bio_techniques,
            proportion_uses_swc_techniques,
            proportion_uses_gully_techniques]) AS indicator_value
    from initial_agg
), baseline as(
    select
        country,
        project_code,
        -- beneficiary_control,
        rhomis_indicator,
        indicator_value as baseline_results
    from indicator_nesting
    where timing = 'Baseline'
), midline as(
    select
        country,
        project_code,
        -- beneficiary_control,
        rhomis_indicator,
        indicator_value as midline_results
    from indicator_nesting
    where timing = 'Midline'
), endline as(
    select
        country,
        project_code,
        -- beneficiary_control,
        rhomis_indicator,
        indicator_value as endline_results
    from indicator_nesting
    where timing = 'Endline'
)

select 
    b.country,
    b.project_code,
    -- b.beneficiary_control,
    b.rhomis_indicator,
    baseline_results,
    midline_results,
    endline_results
from baseline b
left join midline m on m.project_code = b.project_code and m.rhomis_indicator = b.rhomis_indicator
left join endline e on e.project_code = b.project_code and e.rhomis_indicator = b.rhomis_indicator