{{
    config(
        materialized='table',transient = false
    )
}}

select * from {{ source('raw_cust', 'RAW_CUSTOMERS') }}