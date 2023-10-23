{{config(materialized='table')}}

-- select * from {{source('csv', 'rhomis_indicators')}}
-- updated to Tree Aid Master Data source
select * from {{source('airbyte', 'rhomis_indicators')}}

