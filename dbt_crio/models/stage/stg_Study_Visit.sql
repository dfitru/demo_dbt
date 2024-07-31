{{
  config(
    materialized='view'
  )
}}

WITH stg_Study_Visit AS (
  SELECT
        skip_pi_sign_off,
        study_visit_key,
        anchor_study_visit_key,
        block_day_number,
        duration
        end_days,
        ignore_visit_for_invoicing,
        is_anchor_visit,
        offset,
        offset_after,
        offset_before,
        price_per_visit,
        start_days,
        study_key,
        subject_key,
        template_level,
        type,
        visit_order,
        block_uid,
        external_id,
        name,
        notes,
        visit_number,
        date_created,
        last_updated

  FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.study_visit
)

SELECT * FROM stg_Study_Visit