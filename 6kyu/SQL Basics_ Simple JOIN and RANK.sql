--SQL: 6 kyu - SQL Basics: Simple JOIN and RANK
--https://www.codewars.com/kata/58094559c47d323ebd000035

SELECT 
  personas.id, 
  personas.name, 
  COUNT(ventas.sale) AS sale_count, 
  RANK() OVER (PARTITION BY personas.id ORDER BY personas.id DESC) AS sale_rank 
FROM people as personas
  INNER JOIN sales as ventas
  ON personas.id = ventas.people_id
  GROUP BY personas.id;
