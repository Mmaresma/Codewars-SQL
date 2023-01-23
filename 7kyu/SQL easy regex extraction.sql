--SQL: 7 kyu - SQL easy regex extraction
--https://www.codewars.com/kata/5c0ae69d5f72394e130025f6

SELECT 
  saludos.name, 
  saludos.greeting, 
  replace(substring(saludos.greeting, '#[\d]+'), '#', '') as user_id
FROM greetings as saludos;
