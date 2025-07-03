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
from DBT_CLASS_NEW.DBT_CLASS_SCHEMS.RAW_PAYMENTS