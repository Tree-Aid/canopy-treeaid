select jsonb_object_keys(json -> 'xform:choices') from onadata.registry limit 100

--select * from onadata."ta_rho_mis_gb8_endline_jan-mar2021"

--need the form_id to know how to join from submission to form


-- once we have the form.. 

-- find all keys in xform:choices (FIELD NAME - long)

    -- for each key, find all inside dictionary keys  (list)

        -- for each key, find all keys (list_value)

            -- for each key, 
                -- store the name (language)
                -- store the value (value)
