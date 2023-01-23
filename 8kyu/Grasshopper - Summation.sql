--SQL: 8 kyu - Grasshopper - Summation
--https://www.codewars.com/kata/55d24f55d7dd296eb9000030

SELECT 
  kk.n, 
  kk.n * (kk.n + 1) / 2 AS res 
FROM kata as kk;
