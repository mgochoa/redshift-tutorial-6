-- A cuantos les gusta el jazz

SELECT COUNT(*) AS jazz_likes_count
FROM users
WHERE likejazz = true;


-- A cuantos les gusta el rock y la opera

SELECT COUNT(*) AS jazz_likes_count
FROM users
WHERE likejazz = true;



------------ Cuál es el promedio, moda y mediana del total de Ventas?
-- Promedio (Media)
SELECT AVG(pricepaid) AS promedio_ventas
FROM sales;

-- Moda
SELECT pricepaid AS moda_ventas
FROM (
    SELECT pricepaid, COUNT(*) AS price_count
    FROM sales
    GROUP BY pricepaid
    ORDER BY price_count DESC
    LIMIT 1
) AS mode_subquery;

-- Mediana
SELECT
  pricepaid AS mediana_ventas
FROM (
    SELECT pricepaid,
           ROW_NUMBER() OVER (ORDER BY pricepaid) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM sales
    ORDER BY pricepaid
) AS median_subquery
WHERE row_num = (total_rows + 1) / 2 OR row_num = (total_rows + 2) / 2;



---- Cuál es el promedio de ventas de usuarios que gustan del rock, pero NO del Jazz?

SELECT AVG(s.pricepaid) AS promedio_ventas_rock_not_jazz
FROM sales s
JOIN users u ON s.sellerid = u.userid
WHERE u.likerock = true AND u.likejazz = false;
