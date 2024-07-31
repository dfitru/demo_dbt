{{
  config(
    materialized='view'
  )
}}

WITH stg_Subject_visit as (
  SELECT *

  FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.Subject_visit
  where _fivetran_deleted=false
)

SELECT * FROM stg_Subject_visit