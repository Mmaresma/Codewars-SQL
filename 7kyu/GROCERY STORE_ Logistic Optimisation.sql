--SQL: 7 kyu - GROCERY STORE: Logistic Optimisation
--https://www.codewars.com/kata/5a8ec692b17101bfc70001ba

SELECT 
  COUNT(productos.producer) AS count_products_types,
  productos.producer
FROM 
  products as productos
GROUP BY productos.producer
ORDER BY count_products_types DESC, productos.producer ASC
