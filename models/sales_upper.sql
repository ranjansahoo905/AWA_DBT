select
    {{ make_upper('customer_name') }} as customer_name
from AWA_DBT.DBT_SH.SALES_DATA