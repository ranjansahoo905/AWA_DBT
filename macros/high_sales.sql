{% macro high_sales_filter(column, amount) %}
    {{ column }} > {{ amount }}
{% endmacro %}