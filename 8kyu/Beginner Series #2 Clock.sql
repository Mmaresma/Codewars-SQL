--SQL: 8 kyu - Beginner Series #2 Clock
--https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a

SELECT p.h * 60 * 60 * 1000 + p.m * 60 * 1000 + p.s * 1000 AS res FROM past as p;
