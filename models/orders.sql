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
from DBT_CLASS_NEW.DBT_CLASS_SCHEMS.RAW_ORDERS