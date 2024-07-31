{{
  config(
    materialized='view'
  )
}}

WITH
  stg_Study_visit_finance AS (
    SELECT
        study_visit_key,
        organization_key,
        revenue_base_requires_invoice,
        revenue_screen_fail_requires_invoice,
        site_key,
        study_key,
        vendor_key,
        date_created,
        last_updated,
        cost_base,
        cost_screen_fail,
        patient_stipend,
        revenue_base,
        revenue_screen_fail,
        total_costs,
        total_costs_paid,
        total_costs_unpaid,
        total_holdbacks,
        total_paid,
        total_receivables,
        total_revenue

    FROM PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.study_visit_finance                                                           
  )

SELECT * FROM stg_Study_visit_finance