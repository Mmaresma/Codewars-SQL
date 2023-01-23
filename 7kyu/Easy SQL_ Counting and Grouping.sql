--SQL: 7 kyu - Easy SQL: Counting and Grouping
--https://www.codewars.com/kata/594633020a561e329a0000a2

/*  SQL  */
SELECT
   race
  ,COUNT(*) AS count
FROM demographics
GROUP BY race
ORDER BY count DESC
