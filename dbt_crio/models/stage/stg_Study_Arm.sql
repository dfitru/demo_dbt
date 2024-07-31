{{
  config(
    materialized='view'
  )
}}

WITH stg_Study_Arm AS (
  SELECT
        study_arm_key,
        study_key,
        is_active,
        description,
        external_id,
        name,
        date_created,
        last_updated

  FROM  PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.study_arm
)

SELECT * FROM stg_Study_Arm