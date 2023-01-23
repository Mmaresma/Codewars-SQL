--SQL: 5 kyu - SQL Basics: Simple PIVOTING data
--https://www.codewars.com/kata/58126aa90ea99769e7000119

CREATE EXTENSION tablefunc;
    
SELECT * FROM  crosstab(
      'SELECT productos.name, detalles.detail, COUNT(detalles.id)
      FROM products as productos
      JOIN details as detalles
      ON productos.id = detalles.product_id
      GROUP BY productos.name, detalles.detail
      ORDER BY 1,2')
AS ct (name text, bad bigint, good bigint, ok bigint)
