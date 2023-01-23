--SQL: 6 kyu - SQL: Regex AlphaNumeric Split
--https://www.codewars.com/kata/594257d4db68b6e99200002c

SELECT 
  repositorio.project, 
  REGEXP_REPLACE(repositorio.address, '[[:digit:]]', '', 'g') as letters, 
  REGEXP_REPLACE(repositorio.address, '[[:alpha:]]', '', 'g') as numbers
FROM repositories as repositorio;
