--SQL: 7 kyu - GROCERY STORE: Support Local Products
--https://www.codewars.com/kata/5a8ed96bfd8c066e7f00011a

SELECT
  COUNT(*) AS products,
  productos.country
FROM products as productos
	WHERE productos.country IN ('United States of America', 'Canada')
	GROUP BY productos.country
	ORDER BY products DESC;
