--SQL: 7 kyu - Easy SQL: ASCII Converter
--https://www.codewars.com/kata/594804a218e96caa8d00051b

SELECT 
  demo.id,
  ASCII(demo.name) AS name,
  demo.birthday,
  ASCII(demo.race) AS race 
  FROM demographics as demo;
