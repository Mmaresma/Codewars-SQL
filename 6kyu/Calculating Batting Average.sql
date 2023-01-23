--SQL: 6 kyu - Calculating Batting Average
--https://www.codewars.com/kata/5994dafcbddc2f116d000024

SELECT
  player_name,
  games,
  ltrim(TO_CHAR(CAST(hits AS decimal) / at_bats,'0.999')) AS batting_average
FROM 
  yankees
WHERE
  at_bats >= 100
ORDER BY
  batting_average DESC;
