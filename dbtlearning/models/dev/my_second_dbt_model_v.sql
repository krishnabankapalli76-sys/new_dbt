
select *
  from {{ ref('MY_FIRST_DBT_MODEL') }}
  where id = 1



