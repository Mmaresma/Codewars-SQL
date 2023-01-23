--SQL: 7 kyu - Recursion #1 - Factorial
--https://www.codewars.com/kata/5694cb0ec554589633000036

WITH RECURSIVE DPacoFactor(n, fact) AS 
  (
    SELECT 0, CAST(1 AS BIGINT)
        UNION ALL
    SELECT 1 + n, (1 + n) * fact FROM DPacoFactor WHERE n <= 15
  )
SELECT * from DPacoFactor;
