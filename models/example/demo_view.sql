{{ config(materialized='view') }}

select
    c_custkey    as customer_id,
    c_name       as customer_name,
    c_nationkey  as nation_key,
    c_acctbal    as account_balance
from snowflake_sample_data.tpch_sf1.customer