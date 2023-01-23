--SQL: 5 kyu - SQL Statistics: MIN, MEDIAN, MAX
--https://www.codewars.com/kata/58167fa1f544130dcf000317

SELECT 
  MIN(score) AS min, 
  PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY score) AS median,
  MAX(score) AS max
FROM result;
