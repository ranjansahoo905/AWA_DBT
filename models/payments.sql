{{
    config(
        materialized='table'
    )
}}

select 
	ID,
	ORDER_ID,
	AMOUNT,
	PAYMENT_METHOD,
	PAYMENT_DATE
from DBT_CLASS2.DBT_CLASS2.RAW_PAYMENTS