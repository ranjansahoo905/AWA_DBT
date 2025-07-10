WITH source AS (
    SELECT * FROM {{ source('raw_cust', 'RAW_PRODUCTS') }}
)
select
	ID AS PRODUCT_ID,
	NAME,
	CATEGORY,
	PRICE
from source