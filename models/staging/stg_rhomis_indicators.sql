{{config(materialized='table')}}

select * from {{source('csv', 'rhomis_indicators')}}

