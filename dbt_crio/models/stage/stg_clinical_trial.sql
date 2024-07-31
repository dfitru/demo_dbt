{{
  config(
    materialized='view'
  )
}}

with  stg_clinical_trial as (
  select
    clinical_trial_key,
    cro_key,
    irb_key,
    is_active,
    is_validated,
    phase,
    sponsor_key,
    type,
    c_t_gov_id,
    c_t_gov_title,
    cro_name_unvalidated,
    indications,
    irb_name_unvalidated,
    market_name,
    protocol_number,
    date_created,
    last_updated

  from
    PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.clinical_trial
)

select * from stg_clinical_trial