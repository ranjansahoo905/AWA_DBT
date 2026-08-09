select
    product,
    {{ round_value('sales') }} as rounded_sales
from AWA_DBT.DBT_SH.SALES_DATA