--SQL: 7 kyu - Easy SQL: Absolute Value and Log to Base
--https://www.codewars.com/kata/594a8f2f7ca3c692a4000041

SELECT 
  ABS(decimales.number1) as abs, 
  LOG(64.0, decimales.number2) as log 
  FROM decimals as decimales
