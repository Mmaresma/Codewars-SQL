--SQL: 8 kyu - Grasshopper - Check for factor
--https://www.codewars.com/kata/55cbc3586671f6aa070000fb

SELECT 
  kk.id,
  MOD(kk.base, kk.factor) = 0 AS res
FROM kata as kk;
