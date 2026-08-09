select
    order_id,
    {{ get_year('order_date') }} as order_year
from AWA_DBT.DBT_SH.SALES_DATA