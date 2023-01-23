--SQL: 7 kyu - SQL with Street Fighter: Total Wins
--https://www.codewars.com/kata/5ac698cdd325ad18a3000170

SELECT 
  name,
  sum(won) AS won,
  sum(lost) AS lost
FROM fighters
INNER JOIN winning_moves on fighters.move_id = winning_moves.id
WHERE winning_moves.move NOT IN ('Hadoken','Shouoken','Kikoken')
GROUP BY 
  name
ORDER BY
  won DESC
LIMIT 6
