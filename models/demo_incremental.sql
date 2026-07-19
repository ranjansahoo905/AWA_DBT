{{
    config(
        materialized='incremental',
        unique_key='customer_id'
    )
}}

select
    c_custkey    as customer_id,
    c_name       as customer_name,
    c_nationkey  as nation_key,
    c_acctbal    as account_balance,
    current_timestamp() as loaded_at
from snowflake_sample_data.tpch_sf1.customer

{% if is_incremental() %}
    where c_custkey > (select max(customer_id) from {{ this }})
{% endif %}