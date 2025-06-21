    {{
        config(
            materialized='table'
        )
    }}
select 
    ID,
	CUSTOMER_ID,
	STATUS,
	ORDER_DATE,
	TOTAL_AMOUNT,
	CREATED_AT,
	UPDATED_AT
from DBT_CLASS2.DBT_CLASS2.RAW_ORDERS
