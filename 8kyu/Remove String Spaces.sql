--SQL: 8 kyu - Remove String Spaces
--https://www.codewars.com/kata/57eae20f5500ad98e50002c5

SELECT
  nop.x,  REPLACE(nop.x, ' ', '') AS "res" 
FROM nospace as nop;
