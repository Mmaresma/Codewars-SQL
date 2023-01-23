--SQL: 8 kyu - Grasshopper - Terminal game move function
--https://www.codewars.com/kata/563a631f7cbbc236cf0000c2

SELECT mov.position + mov.roll + mov.roll AS res
FROM moves as mov;
