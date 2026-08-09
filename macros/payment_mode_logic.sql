{% macro payment_sales(mode) %}
    sum(case when payment_mode = '{{ mode }}' then sales end)
{% endmacro %}