--SQL: 5 kyu - SQL Basics: Group By Day
--https://www.codewars.com/kata/5811597e9d278beb04000038

SELECT DATE(created_at) as day, description, COUNT(*)
FROM events
WHERE name = 'trained'
GROUP BY DATE(created_at), description
