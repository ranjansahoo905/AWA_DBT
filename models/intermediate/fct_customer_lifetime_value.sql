select
    c.customer_id,
    sum(e.order_amount) as lifetime_value,
    count(e.order_id) as total_orders,
    from {{ ref('stg_customers') }} c
    join {{ ref('int_completed_orders') }} e
    ON c.customer_id = e.customer_id
GROUP BY c.customer_id