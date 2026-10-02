-- TAREA 1: Selección Simple
SELECT producto, precio_unitario
FROM ventas_tecnologia
ORDER BY producto ASC;

-- TAREA 2: Filtrado Crítico
SELECT *
FROM ventas_tecnologia
WHERE pais = 'Colombia' AND precio_unitario > 500;

-- TAREA 3: Búsqueda de Nulos
SELECT *
FROM ventas_tecnologia
WHERE categoria IS NULL;

-- TAREA 4: Análisis de Rendimiento (Agregación)
SELECT 
    categoria,
    SUM(cantidad * precio_unitario) AS ingresos_totales
FROM ventas_tecnologia
GROUP BY categoria;

-- TAREA 5: Filtro de Élite (HAVING)
SELECT 
    categoria,
    SUM(cantidad * precio_unitario) AS ingresos_totales
FROM ventas_tecnologia
GROUP BY categoria
HAVING SUM(cantidad * precio_unitario) > 10000;