--SQL: 7 kyu - BASICS: Length based SELECT with LIKE
--https://www.codewars.com/kata/5a8d94d3ba1bb569e5000198

SELECT 
  nombres.first_name, 
  nombres.last_name
FROM names as nombres
WHERE nombres.first_name LIKE '______%';
