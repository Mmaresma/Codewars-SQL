--SQL: 8 kyu - Count the number of cubes with paint on
--https://www.codewars.com/kata/5763bb0af716cad8fb000580

SELECT cuadricula.n, 
CASE
    WHEN cuadricula.n = 0 THEN 1
    ELSE cuadricula.n * cuadricula.n * 6 + 2
END
AS res FROM squares as cuadricula;
