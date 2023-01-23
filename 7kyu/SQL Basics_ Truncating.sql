--SQL: 7 kyu - SQL Basics: Truncating
--https://www.codewars.com/kata/594a8fa5a2db9e5f290000c3

SELECT 
  TRUNC(decimales.number1 + decimales.number2) AS towardzero 
  FROM decimals as decimales;
