with source as (
    select * from {{ source('raw_cust', 'RAW_PAYMENTS') }}
)
select 
	ID AS PAYMENT_ID,
	ORDER_ID,
	AMOUNT,
	PAYMENT_METHOD,
	PAYMENT_DATE
from source