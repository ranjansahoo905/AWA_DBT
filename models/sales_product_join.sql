select
    s.sale_id,
    s.product_id,
    p.category,
    p.category_manager,
    p.tax_rate,
    s.amount
from AWA_DBT.DBT_SH.SALES s
left join {{ ref('product_category_seed') }} p
    on s.product_id = p.product_id