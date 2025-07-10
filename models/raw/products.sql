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
from DBT_CLASS_NEW.DBT_CLASS_SCHEMS.RAW_PRODUCTS