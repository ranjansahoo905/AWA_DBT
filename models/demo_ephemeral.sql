{{ config(materialized='ephemeral') }}

select
    c_custkey    as customer_id,
    c_acctbal    as account_balance
from snowflake_sample_data.tpch_sf1.customer
where c_acctbal > 0