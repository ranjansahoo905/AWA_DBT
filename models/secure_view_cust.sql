{{
    config(
        materialized='view',secure = true
    )
}}
select * from {{ source('raw_cust', 'RAW_CUSTOMER') }}