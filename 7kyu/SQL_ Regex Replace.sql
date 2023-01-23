--SQL: 7 kyu - SQL: Regex Replace
--https://www.codewars.com/kata/5942b066db68b6f35f000084

SELECT
  repo.project, 
  repo.commits, 
  repo.contributors, 
  REGEXP_REPLACE(repo.address, '[[:digit:]]', '!', 'g') as address
FROM repositories as repo;
