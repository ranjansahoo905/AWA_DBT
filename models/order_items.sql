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
from DBT_CLASS2.DBT_CLASS2.RAW_ORDER_ITEMS