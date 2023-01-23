--SQL: 7 kyu - Countries Capitals for Trivia Night (SQL for Beginners #6)
--https://www.codewars.com/kata/5e5f09dc0a17be0023920f6f

-- Your solution here
select capital from countries
where continent like 'Afri_a' and country like 'E%' order by capital limit 3;
