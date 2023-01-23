--SQL: 6 kyu - SQL Basics: Simple UNION ALL
--https://www.codewars.com/kata/58112f8004adbbdb500004fe

SELECT
  *, 
  'US' as location FROM ussales as ventasUS
WHERE ventasUS.price > 50.00
UNION ALL
SELECT 
  * , 
  'EU' as location FROM eusales as ventasEU
WHERE ventasEU.price > 50.00
ORDER BY location desc, id;
