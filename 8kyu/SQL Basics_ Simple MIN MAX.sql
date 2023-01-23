--SQL: 8 kyu - SQL Basics: Simple MIN / MAX
--https://www.codewars.com/kata/581113dce10b531b1d0000bd

SELECT 
    MIN(p.age) AS age_min, 
    MAX(p.age) AS age_max 
FROM people as p;
