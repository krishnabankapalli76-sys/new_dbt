{{ config(materialized='table', schema='DBT_SCHEMA_STG') }}
select *
  from {{ ref('my_first_dbt_model') }}
  where id = 1



