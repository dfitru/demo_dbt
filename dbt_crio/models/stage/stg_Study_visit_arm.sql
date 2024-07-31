{{
  config(
    materialized='view'
  )
}}

WITH stg_Study_visit_arm AS (
  SELECT
        study_visit_arm_key,
        study_arm_key,
        study_key,
        study_visit_key,
        visit_order,
        external_id,
        date_created,
        last_updated,

  FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.study_visit_arm
)   

SELECT * FROM stg_Study_visit_arm