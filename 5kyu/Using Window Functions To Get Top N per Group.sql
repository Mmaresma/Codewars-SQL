--SQL: 5 kyu - Using Window Functions To Get Top N per Group
--https://www.codewars.com/kata/582001237a3a630ce8000a41

WITH CTE AS (
    SELECT categorias.id as category_id,
           categorias.category,
           envios.id as post_id,
           envios.views as views,
           envios.title,
          ROW_NUMBER() OVER (PARTITION BY envios.category_id
           ORDER BY envios.views DESC, envios.id) ROW_NUM
    FROM categories as categorias
    LEFT JOIN posts as envios
    ON categorias.id = envios.category_id
    GROUP BY categorias.id, categorias.category, envios.title, envios.id 
)
SELECT category_id, category, title, views, post_id
FROM CTE WHERE ROW_NUM <= 2
ORDER BY category, views DESC, post_id;
