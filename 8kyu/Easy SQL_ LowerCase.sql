--SQL: 8 kyu - Easy SQL: LowerCase
--https://www.codewars.com/kata/594800ba6fb152624300006d

SELECT DEMO.id, DEMO.name, DEMO.birthday, LOWER(DEMO.race) as race FROM demographics AS DEMO;
