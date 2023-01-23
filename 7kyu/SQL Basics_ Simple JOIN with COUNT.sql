--SQL: 7 kyu - SQL Basics: Simple JOIN with COUNT
--https://www.codewars.com/kata/580918e24a85b05ad000010c

SELECT 
  personas.id, 
  personas.name, 
  COUNT(juguetes.name) AS toy_count
FROM 
  people AS personas
LEFT JOIN toys AS juguetes ON personas.id = juguetes.people_id
GROUP BY personas.id, personas.name;
