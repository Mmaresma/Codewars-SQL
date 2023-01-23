--SQL: 6 kyu - SQL Basics: Simple table totaling.
--https://www.codewars.com/kata/5809575e166583acfa000083

SELECT
  RANK() OVER (ORDER BY SUM(personas.points) DESC) AS rank,
  COALESCE(NULLIF(personas.clan,''), '[no clan specified]') AS clan,
  SUM(points) AS total_points,
  COUNT(personas.name) AS total_people
FROM people as personas
GROUP BY clan
