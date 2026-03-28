{% macro ms_a_kmh(columna_viento) %}
    ROUND(CAST({{ columna_viento }} AS FLOAT) * 3.6, 2)
{% endmacro %}