--SQL: 7 kyu - Easy SQL: Bit Length
--https://www.codewars.com/kata/594900e16fd782a607000059

SELECT 
  dem.id, 
  BIT_LENGTH(dem.name) AS name, 
  dem.birthday, 
  BIT_LENGTH(dem.race) AS race
FROM demographics as dem;
