WITH source AS (
    SELECT * FROM {{ source('raw_cust', 'RAW_CUSTOMERS') }}
)
select 
    ID AS CUSTOMER_ID,
	NAME,
	EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
from source