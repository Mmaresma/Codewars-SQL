--SQL: 8 kyu - String repeat
--https://www.codewars.com/kata/57a0e5c372292dd76d000d7e

SELECT 
  repes.s, 
  repes.n, 
  REPEAT(repes.s, repes.n) AS "res" 
FROM repeatstr as repes;
