--SQL: 8 kyu - Count Odd Numbers below n
--https://www.codewars.com/kata/59342039eb450e39970000a6

SELECT 
  CuantosImpar.n, CuantosImpar.n / 2 AS res 
FROM oddcount as CuantosImpar;
