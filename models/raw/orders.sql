    {{
        config(
            materialized='table'
        )
    }}
select 
   ID,
	CREATED_AT,
	USER_ID,
	PRODUCT_ID,
	QUANTITY
	UNIT_PRICE,
	STATUS
from DBT_CLASS_NEW.DBT_CLASS_SCHEMS.RAW_ORDERS