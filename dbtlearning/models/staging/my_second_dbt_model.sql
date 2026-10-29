{{ config(SCHEMA='DBT_SCHEMA_STG') }}
select *
  from {{ source('staging','MY_FIRST_DBT_MODEL') }}
  where id = 1



