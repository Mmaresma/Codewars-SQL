--SQL: 5 kyu - SQLonacci sequence
--https://www.codewars.com/kata/59821d485a49f4d71f00000b

WITH RECURSIVE SQLonacci(number, next_num) AS 
      (
        SELECT 0::BIGINT, 1::BIGINT
        UNION ALL
        SELECT next_num::BIGINT, number + next_num::BIGINT
        FROM SQLonacci
      )
SELECT number FROM SQLonacci LIMIT 90
