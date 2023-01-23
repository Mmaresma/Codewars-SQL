--SQL: 8 kyu - Simple multiplication
--https://www.codewars.com/kata/583710ccaa6717322c000105

SELECT 
  multi.number,
  CASE
    WHEN multi.number % 2 = 0 THEN multi.number * 8
    ELSE multi.number * 9
  END
AS res FROM multiplication as multi;
