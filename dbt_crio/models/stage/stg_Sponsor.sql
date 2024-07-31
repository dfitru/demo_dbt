{{
  config(
    materialized='view'
  )
}}

WITH stg_Sponsor AS (
    SELECT
        sponsor_key,
        has_logo,
        is_validated,
        description,
        name,
        permalink,
        website,
        date_created,
        last_updated
    FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.sponsor

)
SELECT * FROM stg_Sponsor