--SQL: 6 kyu - SQL Basics - Monsters using CASE
--https://www.codewars.com/kata/593ef0e98b90525e090000b9

SELECT
  TH.id AS id,TH.heads AS heads,TH.arms AS arms,BH.legs AS legs,BH.tails AS tails,
CASE
  WHEN (heads > arms) OR (tails > legs)
    THEN 'BEAST' ELSE 'WEIRDO'
  END AS species
FROM top_half AS TH, bottom_half AS BH
WHERE TH.id = BH.id
ORDER BY species;
