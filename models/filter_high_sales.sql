select *
from AWA_DBT.DBT_SH.SALES_DATA
where {{ high_sales_filter('sales', 1500) }}