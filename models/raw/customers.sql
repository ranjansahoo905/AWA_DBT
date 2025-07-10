select 
    ID,
	NAME,
	EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
from {{ source('raw_cust', 'RAW_CUSTOMERS') }}