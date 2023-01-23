--SQL: 6 kyu - SQL Basics: Simple HAVING
--https://www.codewars.com/kata/58164ddf890632ce00000220

SELECT 
  personas.age, 
  COUNT(*) AS total_people
FROM people as personas
GROUP BY personas.age
HAVING COUNT(*) >= 10;
