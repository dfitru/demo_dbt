{{
  config(
    materialized='view'
  )
}}

with  stg_Site as (
  select
    latitude
    longitude,
    site_key,
    facebook_page_id,
    finance_contact_user_key,
    has_anonymize_subject,
    has_ereg,
    has_finance,
    has_logo,
    has_maps,
    has_patient_consent,
    has_patient_stipends,
    has_pi_sign_off,
    has_procedure_tracking_board,
    has_qa_check,
    has_recruiting
    has_subject_login,
    lock_subject_document_after_esign,
    master_recruiting_site_key,
    months_until_consent_expires,
    organization_key,
    patient_traits_study_key,
    pi_dashboard_requires_complete,
    pi_dashboard_requires_qa,
    recruiting_needs_followup_days,
    region_key,
    requires_address,
    requires_social_security_number,
    secure_study_configuration,
    stipend_account_key,
    study_template_creation_type,
    subject_name_display_preference,
    type,
    has_medical_record_requests,
    has_medical_record_patient_insights,
    address1,
    address2,
    alternative_geo_address,
    city,
    contact_first_name,
    contact_last_name,
    country_code,
    currency_code,
    description,
    devana_id,
    devana_name,
    email,
    facebook_page_access_token,
    fax,
    geo_address,
    geo_address_formatted,
    language_code,
    name,
    nickname,
    outreach_email_from_address,
    outreach_email_reply_to_address,
    permalink,
    phone
    region_name,
    salesforce_site_id,
    site_external_id,
    state,
    time_zone,
    website,
    zip_code,
    sitecol,
    date_created,
    geo_updated,
    last_updated,
    pi_dashboard_cut_off_date,
    patient_stipend_threshold_amount

  from
    PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.Site
)

select * from stg_Site