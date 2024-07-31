{{
  config(
    materialized='view'
  )
}}

with  stg_User as (
  select
      user_key,
      has_custom_photo,
      is_active,
      is_email_verified,
      is_external_user,
      is_locked,
      is_profile_public,
      setting_hide_resolved_comments,
      type,
      app_keys,
      cell_phone,
      credentials,
      email,
      fax,
      first_name,
      language_code,
      last_name,
      linked_in_url,
      middle_name,
      office_phone,
      password,
      professional_headline,
      restricted_to_ip_addresses,
      title,
      username,
      date_created,
      date_last_login,
      last_updated,
      password_last_updated,

  from
    PC_FIVETRAN_DB.BIGQUERY_DB_CRIO_DATA.user u
)

select * from stg_User