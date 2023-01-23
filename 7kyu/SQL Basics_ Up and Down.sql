--SQL: 7 kyu - SQL Basics: Up and Down
--https://www.codewars.com/kata/595a3ba3843b0cbf8e000004

SELECT
  CASE WHEN SUM(number1) % 2 = 0 THEN MAX(number1)
       WHEN SUM(number1) % 2 <> 0 THEN MIN(number1)
  END  number1,
  CASE WHEN SUM(number2) % 2 = 0 THEN MAX(number2)
       WHEN SUM(number2) % 2 <> 0 THEN MIN(number2)
  END number2
FROM numbers;
