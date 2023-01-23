--SQL: 7 kyu - Easy SQL: Moving Values
--https://www.codewars.com/kata/594a389387a7c6a77a000005

SELECT 
  LENGTH(monstruos.name) AS "id",
  LENGTH(CAST(monstruos.legs AS varchar)) AS "name",
  LENGTH(CAST(monstruos.arms AS varchar)) AS "legs",
  LENGTH(monstruos.characteristics) AS "arms",
  LENGTH(CAST(monstruos.id AS varchar)) AS "characteristics"
FROM monsters as monstruos;
