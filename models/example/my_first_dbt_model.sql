
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
  

{{ config(materialized='view') }}

with source_data as (

    select 3 as id
    union all
    select 4 as id

)

select *
from source_data

{{ source('source_name', 'object_name') }}