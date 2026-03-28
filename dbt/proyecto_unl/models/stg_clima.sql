WITH origen AS (
    SELECT
        ciudad,
        CAST(temperature AS NUMERIC) AS temp_celsius,
        -- Aplicamos la macro para convertir viento de m/s a km/h
        {{ ms_a_kmh('windspeed') }} AS viento_kmh
        weather_desc AS descripcion_clima,
        CAST(fecha_medicion AS TIMESTAMP) AS fecha_registro
        
    FROM {{ source('raw_data', 'raw_clima_nacional') }}
)
SELECT * FROM origen