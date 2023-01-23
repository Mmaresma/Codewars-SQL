--SQL: 7 kyu - GROCERY STORE: Real Price!
--https://www.codewars.com/kata/5a8f00745084d718940000c5

SELECT 
  productos.name, 
  productos.weight, 
  productos.price, 
  ROUND((productos.price*1000/weight)::numeric,2)::float AS price_per_kg 
FROM 
  Products as productos
ORDER BY price_per_kg, productos.name
