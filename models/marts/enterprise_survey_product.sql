with sales_elements as 
(
{{survey_type_table('Enterprise survey', repeat='sales_elements')}} 
) 
select * from sales_elements
--the joins are missing! we need the macro.  (easy and hard joins. that's what the macro is for, right?)