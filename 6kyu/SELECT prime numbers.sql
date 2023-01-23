--SQL: 6 kyu - SELECT prime numbers
--https://www.codewars.com/kata/59be9f425227ddd60c00003b

SELECT Generar1.a AS prime
  FROM generate_series(2, 100) AS Generar1(a)
  WHERE NOT EXISTS (
    SELECT Generar2.a
    FROM generate_series(2, Generar1.a-1) AS Generar2(a)
    WHERE Generar1.a % Generar2.a = 0
    ); 
