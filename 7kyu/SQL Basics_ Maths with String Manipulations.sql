--SQL: 7 kyu - SQL Basics: Maths with String Manipulations
--https://www.codewars.com/kata/594901ba44645fd7bd00005f

SELECT 
  (BIT_LENGTH(demo.name) + LENGTH(demo.race)) as calculation
FROM demographics as demo;
