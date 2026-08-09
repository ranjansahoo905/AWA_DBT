select
    s.order_id,
    s.customer_name,
    s.currency_code,
    s.amount,
    c.exchange_rate_to_usd,
    round(s.amount * c.exchange_rate_to_usd, 2) as amount_in_usd
from {{ ref('sales2') }} s
left join {{ ref('currency_rates') }} c
    on s.currency_code = c.currency_code