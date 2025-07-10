WITH source AS (
    SELECT * FROM {{ source('raw_cust', 'RAW_CUSTOMERS') }}
)
select 
    ID AS CUSTOMER_ID,
	NAME,
	upper(EMAIL) as EMAIL_UPPER,
	CREATED_AT
from source