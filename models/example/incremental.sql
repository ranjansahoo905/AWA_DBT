{{config(
    materialized = 'incremental',
    unique_key='order_id',
    incremental_strategy='merge'
)}}

select 
ORDER_ID,
CUSTOMER_NAME,
PRODUCT,
AMOUNT,
ORDER_DATETIME,
'{{invocation_id}}' as dbt_invocation_id
from {{source("src","ORDERS")}}

{% if is_incremental() %}
where order_datetime > (
    select max(order_datetime) from {{this}}
    )
{% endif %}