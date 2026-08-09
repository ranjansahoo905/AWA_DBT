select
    customer_id,
    customer_name,
    total_orders,
    total_spent,
    case when total_spent > 1000 then 'VIP' else 'Regular' end as customer_tier
from {{ ref('int_customer_totals') }}