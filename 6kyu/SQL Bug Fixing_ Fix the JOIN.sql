--SQL: 6 kyu - SQL Bug Fixing: Fix the JOIN
--https://www.codewars.com/kata/580fb94e12b34dd1c40001f0

SELECT 
  job_title AS job_title,
  ROUND(AVG(job.salary),2)::FLOAT  AS average_salary,
  COUNT(people_id) AS total_people,
  ROUND(SUM(salary), 2)::FLOAT AS total_salary
  FROM job
     INNER JOIN people 
      ON people.id = job.people_id
      GROUP BY job_title 
      ORDER BY average_salary DESC
      LIMIT 100;
