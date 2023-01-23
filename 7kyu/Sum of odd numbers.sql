--SQL: 7 kyu - Sum of odd numbers
--https://www.codewars.com/kata/55fd2d567d94ac3bc9000064

SELECT 
  CAST(
        POWER(numeros.n, 3) as int
      ) as res 
  FROM nums as numeros;
