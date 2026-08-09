-- jinja datatypes
-- {{"Ranjan"}}
-- {{12345}}
-- {{['Ranjan','Sahoo']}}
-- {{{"first_name":"Ranjan","Last_name":"Sahoo"}}}

-- declare variables

{%- set mystr1 = "Saubhagya" -%}
{{mystr1}}

{%- set myint=1234 -%}
{{myint}}

{%- set mylist="['Ranjn','sahoo']" -%}
{{mylist}}

{%- set myfloat = 455.55 -%}
{{myfloat}}

-- conditional logics

{%- if 1==2 -%}
{{"im inside if condition"}}
{%- else -%}
{{"im inside else condition"}}
{% endif %}

--if/elseif

{%- if 1==2 -%}
{{"im inside 1==1 condition"}}
{%- elif 1==2 -%}
{{"im inside 1==2 condition"}}
{%- else -%}
{{"im inside else condition"}}
{% endif %}

-- loops 

{%- for i in ['a','b','c'] -%}
{{i}}
{%- endfor -%}

-- utils



{{ dbt_utils.get_column_values(source("src","SALES3"),"payment_mode") }}

