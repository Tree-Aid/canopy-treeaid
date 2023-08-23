with sales_elements as 
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69352818
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69352842 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69352842
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69439308 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69439308
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69439315 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69439315
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69444016 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69444016
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69507041 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69507041
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69507850 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69507850
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69512012 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69512012
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69512103 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69512103
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69517873 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69517873
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69517878 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69517878
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69536952 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69536952
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69545162 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69545162
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69555348 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69555348
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69555352 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69555352
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69557789 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69557789
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69557791 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69557791
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69565992 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69565992
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69565995 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69565995
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69566000 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69566000
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69566002 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69566002
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583181 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69583181
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583183 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69583183
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583455 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69583455
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69583470 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69583470
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589549 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69589549
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589553 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69589553
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589557 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69589557
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69589560 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69589560
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69668894 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69668894
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69668913 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69668913
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711708 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711708
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711784 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711784
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711791 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711791
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711842 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711842
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711875 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711875
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711889 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711889
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69711987 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69711987
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69715256 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69715256
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69715263 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69715263
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69715264 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69715264
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69716131 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69716131
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69716139 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69716139
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69716147 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69716147
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69723210 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69723210
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69723216 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69723216
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69723570 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69723570
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69724007 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69724007
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69724131 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69724131
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69724166 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69724166
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69737187 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69737187
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69774571 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69774571
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69774613 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69774613
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797417 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69797417
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797421 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69797421
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797425 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69797425
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69797427 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69797427
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69811899 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69811899
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69814981 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69814981
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69843987 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69843987
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69844016 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69844016
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69860101 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69860101
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69860108 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69860108
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69863852 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69863852
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69863859 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69863859
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69904912 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69904912
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69961030 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69961030
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69961033 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69961033
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69961035 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69961035
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966377 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69966377
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966418 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69966418
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966438 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69966438
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69966467 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69966467
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985673 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69985673
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985677 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69985677
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985680 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69985680
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,69985682 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=69985682
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70026853 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70026853
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70044015 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70044015
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70044018 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70044018
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70044035 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70044035
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046709 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70046709
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046727 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70046727
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046766 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70046766
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70046834 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70046834
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066230 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70066230
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066243 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70066243
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066278 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70066278
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066279 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70066279
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066281 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70066281
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70066720 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70066720
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70130732 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70130732
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70139345 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70139345
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70213837 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70213837
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70213860 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70213860
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70272813 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70272813
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70287835 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70287835
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70287837 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70287837
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            556200::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,70287844 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."bc1_vte_edp_survey_nov2020_final_repeat_sales_elements"
                    
                                where parent_id=70287844
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            574081::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914547 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    vegetable_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_vegetables_edp_survey_jan2021_repeat_sales_elements"
                    
                                where parent_id=75914547
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574081::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914596 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    vegetable_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_vegetables_edp_survey_jan2021_repeat_sales_elements"
                    
                                where parent_id=75914596
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574081::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914621 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    vegetable_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_vegetables_edp_survey_jan2021_repeat_sales_elements"
                    
                                where parent_id=75914621
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574081::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914636 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    vegetable_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_vegetables_edp_survey_jan2021_repeat_sales_elements"
                    
                                where parent_id=75914636
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            574081::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,75914646 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    vegetable_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."eb3_eb8_vte_vegetables_edp_survey_jan2021_repeat_sales_elements"
                    
                                where parent_id=75914646
                            
                     
            
        
            union all
    --finds schemaname and tablename for the db table associated to the form
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
                
            
        
      

    -- loop through all the core fields, select the field with the appropriate name if present
        
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169038 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169038
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169040 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169040
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169042 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169042
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169045 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169045
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169048 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169048
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169050 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169050
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169052 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169052
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169054 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169054
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169056 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169056
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169058 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169058
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169060 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169060
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169062 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169062
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169064 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169064
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169066 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169066
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169068 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169068
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169070 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169070
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169071 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169071
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169074 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169074
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169077 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169077
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169079 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169079
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76169081 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76169081
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243322 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243322
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243326 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243326
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243352 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243352
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243353 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243353
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243356 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243356
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243367 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243367
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243369 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243369
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243387 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243387
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243388 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243388
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243389 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243389
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243391 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243391
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243392 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243392
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243415 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243415
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243417 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243417
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243419 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243419
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243420 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243420
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243422 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243422
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243431 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243431
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243433 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243433
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243435 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243435
                            
                    
                    union all
            --loop through all the fields in dict
            select 
            579084::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,76243458 as submission_id,                    
                        null::bigint as parent_index,
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."gb1_vte_edp_survey_jan-mar2021_repeat_sales_elements"
                    
                                where parent_id=76243458
                            
                     
            
        
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=1
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=2
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=3
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=4
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=7
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=8
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=9
                    
                    union all
            --loop through all the fields in dict
            select 
            590257::varchar as form_id, 
            -- if we are in a repeat group, check the actual names of fields in the repeat group to see if we have the parent submission_id or only the parent_index
                id as id,
                        null as submission_id,
                        parent_index::bigint as parent_index,
                    
                
                -- loop through all the core fields, select the field with the appropriate name if present
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na4_vte_edp_survey_apr-jun2021_draft_repeat_sales_elements"
                    
                                where parent_index=10
                     
            
        
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
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
                
                    sales_elements_label::varchar 
                    as product_element,
                    sales_turn_over_local_income::varchar 
                    as sales_local_income,
                    sales_turn_over_national_income::varchar 
                    as sales_national_income,
                    sales_turn_over_international_income::varchar 
                    as sales_international_income
            
                --find the appropriate table to join based on information in 'stg_core_questions_land_survey'
                from 
                onadata."na6_vte_edp_survey_jan-mar2022_repeat_sales_elements"
                    
                                where parent_index=10
                     
            
        

)
select 
s.form_name,
s.type,
s.timing,
s.country,
s.project_code,
s.type_2,
cq.*
from "tree_aid"."dbt_bokidi"."stg_survey_master" s 
left join core_questions cq on s.form_id::int = cq.form_id::int   
where s.type = 'Enterprise survey'

 
), 
--updated joins
easy_joining_data as 
(
select

"se".form_name,
"se".country,
"se".project_code,
"se".form_id,
"se".id,
"se".submission_id, --in this macro, submission id is collected from the first alias
"es".region,
"es".province,
"es".commune,
"es".date_assessment,
extract('Year' from "es".date_assessment::date) as assessment_year,
"es".assessment_year_date,
"es".beneficiary_control
,
--repeat fields
se.product_element,
se.sales_local_income,
se.sales_national_income,
se.sales_international_income,
es.group_costs_amount,
es.group_vte
from sales_elements se
inner join "tree_aid"."dbt_bokidi"."enterprise_surveys" es on se.submission_id=es.submission_id
where se.submission_id is not null and 
se.product_element is not null and (es.test is null or es.test not in ('y', 'Y','yes','Yes'))
),
harder_joining_data as 
(
select

"se".form_name,
"se".country,
"se".project_code,
"se".form_id,
"se".id,
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
se.product_element,
se.sales_local_income,
se.sales_national_income,
se.sales_international_income,
es.group_costs_amount,
es.group_vte
from sales_elements se
left join "tree_aid"."dbt_bokidi"."enterprise_surveys" es on  
    se.form_id::int = es.form_id::int and  se.parent_index =es.submission_index 
where se.submission_id is null and 
se.product_element is not null and (es.test is null or es.test not in ('y', 'Y','yes','Yes'))
)
select * from easy_joining_data
union all
select * from harder_joining_data