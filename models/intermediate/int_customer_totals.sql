select
    customer_id,
    customer_name,
    count(*)      as total_orders,
    sum(amount)   as total_spent
from {{ ref('stg_orders') }}
group by customer_id, customer_name