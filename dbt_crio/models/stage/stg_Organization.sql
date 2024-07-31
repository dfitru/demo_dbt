{{
  config(
    materialized='view'
  )
}}

with  stg_Organization as (
  select
    has_medical_record_request,
    organization_key,
    has_coding_dictionary_enabled,
    has_devana,
    has_looker,
    has_randomization_date,
    has_salesforce,
    is_active,
    looker_group_id,
    monthly_flat_fee,
    price_per_visit,
    target_studies,
    target_visits_per_week,
    requires_mfa,
    has_econsent,
    lock_template_finances,
    is_active_esource_organization,
    address1,
    address2,
    city,
    contact_first_name,
    contact_last_name,
    description,
    email,
    fax,
    name,
    organization_external_id,
    permalink,
    phone,
    state,
    website,
    zip_code,
    date_created,
    last_updated,

  from
    PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.Organization
)

select * from stg_Organization