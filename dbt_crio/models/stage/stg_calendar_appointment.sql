{{
  config(
    materialized='view'
  )
}}

with  stg_calendar_appointment as (
    SELECT 
          * 
    FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.calendar_appointment
    WHERE _fivetran_deleted=false
)

SELECT * FROM stg_calendar_appointment