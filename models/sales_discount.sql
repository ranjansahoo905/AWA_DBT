select
    product,
    sales,
    {{ discount_calc('sales') }} as discounted_price
from AWA_DBT.DBT_SH.SALES_DATA