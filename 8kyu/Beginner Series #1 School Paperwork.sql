--SQL: 8 kyu - Beginner Series #1 School Paperwork
--https://www.codewars.com/kata/55f9b48403f6b87a7c0000bd

SELECT peiper.n, peiper.m, 
CASE 
  WHEN peiper.n < 0 or peiper.m < 0
    THEN 0
    ELSE peiper.m * peiper.n
  END AS "res" 
FROM paperwork as peiper;
