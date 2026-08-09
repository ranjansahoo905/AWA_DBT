select
    product,
    {{ default_value('sales', 0) }} as sales
from AWA_DBT.DBT_SH.SALES_DATA