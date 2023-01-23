--SQL: 7 kyu - SQL: Right and Left
--https://www.codewars.com/kata/5943a58f95d5f72cb900006a

SELECT 
  left(repositorios.project, repositorios.commits) as "project",
  right(repositorios.address, repositorios.contributors) as "address"
FROM repositories as repositorios;
