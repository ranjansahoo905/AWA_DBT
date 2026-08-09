{% macro sales_category(column) %}
    case 
        when {{ column }} > 2000 then 'High'
        else 'Low'
    end
{% endmacro %}