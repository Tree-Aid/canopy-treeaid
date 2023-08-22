with repeat_group_data as
(
 

with core_questions as 
(
     
   

-- create list of forms.   -- if 'rhomis' create list that are not in extended.rhomis . And either way, up to 5-- create list of fields-- start actual macro
    -- for each form

    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69352818 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69352818
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69352842 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69352842
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69439308 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69439308
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69439315 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69439315
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69444016 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69444016
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69507041 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69507041
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69507850 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69507850
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69512012 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69512012
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69512103 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69512103
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69517873 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69517873
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69517878 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69517878
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69536952 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69536952
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69545162 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69545162
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69555348 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69555348
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69555352 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69555352
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69557789 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69557789
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69557791 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69557791
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69565992 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69565992
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69565995 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69565995
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69566000 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69566000
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69566002 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69566002
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583181 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69583181
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583183 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69583183
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583455 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69583455
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583470 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69583470
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589549 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69589549
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589553 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69589553
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589557 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69589557
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589560 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69589560
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69668894 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69668894
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69668913 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69668913
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711708 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711708
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711784 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711784
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711791 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711791
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711842 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711842
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711875 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711875
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711889 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711889
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711987 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69711987
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69715256 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69715256
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69715263 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69715263
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69715264 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69715264
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69716131 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69716131
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69716139 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69716139
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69716147 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69716147
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69723210 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69723210
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69723216 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69723216
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69723570 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69723570
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69724007 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69724007
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69724131 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69724131
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69724166 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69724166
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69737187 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69737187
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69774571 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69774571
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69774613 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69774613
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797417 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69797417
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797421 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69797421
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797425 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69797425
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797427 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69797427
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69811899 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69811899
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69814981 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69814981
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69843987 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69843987
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69844016 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69844016
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69860101 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69860101
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69860108 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69860108
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69863852 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69863852
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69863859 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69863859
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69904912 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69904912
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69961030 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69961030
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69961033 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69961033
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69961035 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69961035
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966377 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69966377
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966418 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69966418
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966438 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69966438
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966467 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69966467
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985673 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69985673
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985677 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69985677
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985680 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69985680
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985682 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=69985682
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70026853 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70026853
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70044015 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70044015
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70044018 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70044018
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70044035 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70044035
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046709 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70046709
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046727 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70046727
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046766 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70046766
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046834 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70046834
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066230 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70066230
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066243 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70066243
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066278 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70066278
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066279 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70066279
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066281 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70066281
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066720 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70066720
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70130732 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70130732
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70139345 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70139345
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70213837 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70213837
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70213860 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70213860
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70272813 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70272813
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70287835 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70287835
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70287837 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70287837
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70287844 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_derivatives"
                    
                                where parent_id=70287844
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914381 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914381
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914385 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914385
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914391 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914391
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914396 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914396
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914413 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914413
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914418 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914418
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914554 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914554
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914571 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914571
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914589 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914589
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914602 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914602
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914607 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914607
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914612 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914612
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914615 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914615
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914624 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914624
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914629 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914629
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914638 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914638
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574083::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914643 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_edp_survey_jan2021_repeat_derivatives"
                    
                                where parent_id=75914643
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243433 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243433
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243435 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243435
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243458 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243458
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169038 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169038
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169040 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169040
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169042 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169042
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169045 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169045
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169048 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169048
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169050 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169050
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169052 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169052
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169054 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169054
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169056 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169056
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169058 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169058
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169060 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169060
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169062 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169062
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169064 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169064
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169066 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169066
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169068 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169068
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169070 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169070
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169071 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169071
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169074 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169074
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169077 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169077
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169079 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169079
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169081 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76169081
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243322 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243322
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243326 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243326
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243352 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243352
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243353 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243353
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243356 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243356
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243367 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243367
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243369 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243369
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243387 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243387
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243388 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243388
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243389 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243389
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243391 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243391
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243392 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243392
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243415 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243415
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243417 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243417
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243419 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243419
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243420 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243420
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243422 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243422
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243431 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_derivatives"
                    
                                where parent_id=76243431
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_derivatives"
                    
                                where parent_index=6
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_derivatives"
                    
                                where parent_index=7
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031009 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031009
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031010 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031010
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031014 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031014
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031021 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031021
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031022 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031022
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031023 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031023
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031024 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031024
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031026 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031026
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031029 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031029
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            592392::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,82031106 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2021_final_repeat_derivatives"
                    
                                where parent_id=82031106
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858762 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858762
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858763 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858763
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858765 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858765
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858767 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858767
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858770 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858770
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858771 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858771
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858773 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858773
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858774 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858774
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858775 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858775
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858777 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858777
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858778 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858778
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858781 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858781
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858782 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858782
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858784 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858784
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858785 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858785
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858786 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858786
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858787 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858787
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858788 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858788
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858789 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858789
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            629847::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,92858790 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_id=92858790
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=1
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=2
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=3
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=4
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=5
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=6
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=7
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=8
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=9
                    
                    union all
            --loop through all the fields in dict
            select 
            642305::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_derivatives"
                    
                                where parent_index=10
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071481 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071481
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071483 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071483
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071484 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071484
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071486 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071486
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071487 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071487
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071488 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071488
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071496 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071496
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071497 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071497
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071499 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071499
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071501 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071501
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071502 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071502
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071503 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071503
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071505 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071505
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071507 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071507
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96071508 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96071508
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518462 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518462
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518465 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518465
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518467 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518467
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518469 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518469
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518472 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518472
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518474 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518474
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518475 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518475
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518477 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518477
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518480 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518480
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518481 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518481
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518483 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518483
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518484 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518484
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518485 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518485
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518486 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518486
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518487 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518487
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518490 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518490
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518494 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518494
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518495 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518495
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518497 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518497
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518498 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518498
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518499 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518499
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518524 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518524
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518526 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518526
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518527 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518527
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518530 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518530
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518531 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518531
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518532 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518532
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518533 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518533
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518534 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518534
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518536 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518536
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518538 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518538
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518539 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518539
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518543 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518543
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518544 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518544
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            661432::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,98518545 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb8_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=98518545
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110415 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110415
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110417 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110417
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110564 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110564
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110575 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110575
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110579 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110579
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110584 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110584
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110593 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110593
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110599 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110599
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110606 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110606
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110625 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110625
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110641 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110641
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110653 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110653
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110656 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110656
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110660 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110660
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110662 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110662
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110667 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110667
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110671 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110671
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110675 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110675
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96110680 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96110680
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140640 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140640
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140642 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140642
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140656 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140656
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140660 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140660
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140666 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140666
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140670 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140670
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140677 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140677
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140684 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140684
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96140698 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96140698
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142460 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142460
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142463 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142463
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142467 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142467
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142476 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142476
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142477 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142477
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142478 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142478
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142479 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142479
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142482 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142482
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142493 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142493
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142495 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142495
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            662588::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,96142498 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mb6_vte_edp_survey_apr-jun2022_repeat_derivatives"
                    
                                where parent_id=96142498
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110738888 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110738888
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110738912 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110738912
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110738920 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110738920
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110738925 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110738925
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110738961 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110738961
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110738999 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110738999
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739014 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739014
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739036 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739036
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739218 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739218
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739221 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739221
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739229 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739229
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739239 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739239
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739246 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739246
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739268 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739268
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739277 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739277
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739283 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739283
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739289 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739289
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739295 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739295
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739303 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739303
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739312 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739312
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739391 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739391
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739409 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739409
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739423 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739423
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739431 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739431
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739438 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739438
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739445 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739445
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739450 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739450
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739459 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739459
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739468 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739468
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739475 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739475
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739484 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739484
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739534 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739534
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739569 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739569
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739599 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739599
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739607 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739607
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739613 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739613
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110739620 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110739620
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749796 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749796
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749798 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749798
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749801 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749801
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749806 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749806
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749810 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749810
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749816 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749816
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749821 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749821
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749829 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749829
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749834 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749834
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749838 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749838
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            723107::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,110749843 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    product_derivative::varchar 
                    as product_derivative,
                    sales_turn_over_derivatives::varchar 
                    as sales_turn_over_derivatives
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."mc4_product_value_chain_survey_jan-mar23_repeat_derivatives"
                    
                                where parent_id=110749843
                            
                     
            
        

)
select 
s.form_name,
s.type,
s.timing,
s.country,
s.project_code,
s.type_2,
cq.*
from "tree_aid"."dbt_jane"."stg_survey_master" s 
left join core_questions cq on s.form_id::int = cq.form_id::int   
where s.type = 'Enterprise survey'

 
),
-- this refactored
easy_joining_data as 
(
select

"d".form_name,
"d".country,
"d".project_code,
"d".form_id,
"d".id,
"d".submission_id, --in this macro, submission id is collected from the first alias
"es".region,
"es".province,
"es".commune,
"es".date_assessment,
extract('Year' from "es".date_assessment::date) as assessment_year,
"es".assessment_year_date,
"es".beneficiary_control
,
--repeat fields
d.product_derivative,
d.sales_turn_over_derivatives
from repeat_group_data d
inner join "tree_aid"."dbt_jane"."enterprise_surveys" es on d.submission_id=es.submission_id
where d.submission_id is not null and 
d.product_derivative is not null and (es.test is null or es.test not in ('y', 'Y','yes','Yes'))
),
harder_joining_data as 
(
select

"d".form_name,
"d".country,
"d".project_code,
"d".form_id,
"d".id,
"es".submission_id,--in this macro, submission id is collected from the second alias
"es".region,
"es".province,
"es".commune,
"es".date_assessment,
extract('Year' from "es".date_assessment::date) as assessment_year,
"es".assessment_year_date,
"es".beneficiary_control
,
--repeat fields
d.product_derivative,
d.sales_turn_over_derivatives
from repeat_group_data d
left join "tree_aid"."dbt_jane"."enterprise_surveys" es on  
    d.form_id::int = es.form_id::int and  d.parent_index =es.submission_index 
where d.submission_id is null and 
d.product_derivative is not null and (es.test is null or es.test not in ('y', 'Y','yes','Yes'))
)
select * from easy_joining_data
union all
select * from harder_joining_data