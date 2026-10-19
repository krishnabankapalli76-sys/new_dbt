{{ config(materialized='table', schema='DBT_SCHEMA') }}
select *
  from {{ ref('my_first_dbt_model') }}
  where id = 1