{% macro concat_string(v1,v2) %}
concat('{{v1}}','--','{{v2}}')
    
{% endmacro %}