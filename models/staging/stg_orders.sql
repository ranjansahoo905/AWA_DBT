with source as (
    SELECT * FROM {{ source('raw_cust', 'RAW_ORDERS') }}
)
select 
	ID AS ORDER_ID,
	CUSTOMER_ID,
	STATUS,
	ORDER_DATE,
	TOTAL_AMOUNT,
	CREATED_AT,
	UPDATED_AT
FROM source