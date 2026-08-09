select
    order_id,
    customer_id,
    customer_name,
    order_date,
    amount,
    status
from {{ source('src', 'raw_orders') }}