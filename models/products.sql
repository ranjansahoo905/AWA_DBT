{{
    config(
        materialized='table'
    )
}}

select
	ID,
	NAME,
	CATEGORY,
	PRICE
from DBT_CLASS2.DBT_CLASS2.RAW_PRODUCTS