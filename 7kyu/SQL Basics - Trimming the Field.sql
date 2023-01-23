--SQL: 7 kyu - SQL Basics - Trimming the Field
--https://www.codewars.com/kata/59401c25c15cbeb58d000028

SELECT 
  mons.id, 
  mons.name, 
  SPLIT_PART(mons.characteristics, ',', 1) as characteristic
FROM monsters as mons
ORDER BY id;
