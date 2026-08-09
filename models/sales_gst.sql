select
    product,
    sales,
    {{ gst_calc('sales') }} as gst
from AWA_DBT.DBT_SH.SALES_DATA