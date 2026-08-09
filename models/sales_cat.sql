select
    product,
    {{ sales_category('sales') }} as category
from AWA_DBT.DBT_SH.SALES_DATA