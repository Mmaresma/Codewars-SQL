--SQL: 8 kyu - SQL Basics: Simple WHERE and ORDER BY
--https://www.codewars.com/kata/5809508cc47d327c12000084

SELECT 
  personas.id, 
  personas.name, 
  personas.age
FROM people as personas
WHERE personas.age > 50 
ORDER BY personas.age DESC
