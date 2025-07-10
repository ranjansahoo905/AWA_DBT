with source as (
    select * from {{ source('raw_cust', 'RAW_ORDER_ITEMS') }}
)
select 
ID AS ORDER_ITEM_ID,
	ORDER_ID,
	PRODUCT_ID,
	QUANTITY,
	UNIT_PRICE
from source