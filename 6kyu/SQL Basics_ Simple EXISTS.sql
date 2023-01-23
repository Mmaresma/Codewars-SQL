--SQL: 6 kyu - SQL Basics: Simple EXISTS
--https://www.codewars.com/kata/58113a64e10b53ec36000293

-- Create your SELECT statement here
SELECT id, name
FROM departments
WHERE EXISTS (SELECT department_id FROM sales WHERE departments.id = sales.department_id AND price > 98.00)
