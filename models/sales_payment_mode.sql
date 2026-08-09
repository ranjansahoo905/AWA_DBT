select
    {{ payment_sales('cash') }} as cash_sales,
    {{ payment_sales('upi') }} as upi_sales,
    {{ payment_sales('card') }} as card_sales
from AWA_DBT.DBT_SH.SALES_DATA