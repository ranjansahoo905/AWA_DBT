{{
    config(
        materialized='table'
    )
}}

select
    ID,
	ORDER_ID,
	PRODUCT_ID,
	QUANTITY,
	UNIT_PRICE
from DBT_CLASS_NEW.DBT_CLASS_SCHEMS.RAW_ORDER_ITEMS