{% macro default_value(column, value) %}
    coalesce({{ column }}, {{ value }})
{% endmacro %}