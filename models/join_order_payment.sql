with orders 
    as ( select * from {{ ref('stg_orders') }})
    ,payments 
    as (
        select * from {{ ref('stg_payments') }}
    )
select 
    o.ORDER_ID,
    o.customer_id,
    o.status,
    o.order_date,
    o.total_amount,
    p.amount as payment_amount,
    p.payment_method,
    p.payment_date    
from orders o
left join payments p 
on o.ORDER_ID = p.order_id