--SQL: 8 kyu - Quarter of the year
--https://www.codewars.com/kata/5ce9c1000bab0b001134f5af

SELECT 
  qoff.month, 
  (qoff.month + 2) / 3 AS res 
FROM quarterof qoff;
