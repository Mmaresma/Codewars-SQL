--SQL: 8 kyu - Opposites Attract
--https://www.codewars.com/kata/555086d53eac039a2a000083

SELECT 
  amor.flower1, 
  amor.flower2, 
CASE
  WHEN ( amor.flower1 % 2 = 0 AND  amor.flower2 % 2 != 0) 
  OR ( amor.flower2 % 2 = 0 AND  amor.flower1 % 2 != 0)
    THEN true
    ELSE false
  END AS "res"
FROM love as amor;
