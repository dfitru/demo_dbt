{{
  config(
    materialized='view'
  )
}}

with  stg_user_appointment as (
  SELECT
    *

  FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.user_appointment
  where _fivetran_deleted=false
)

SELECT * FROM stg_user_appointment