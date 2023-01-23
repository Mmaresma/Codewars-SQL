--SQL: 6 kyu - SQL Basics: Simple IN
--https://www.codewars.com/kata/58113c03009b4fcc66000d29

SELECT 
  areas.id, 
  areas.name
FROM departments as areas
WHERE id IN 
  (SELECT ventas.department_id FROM sales as ventas WHERE (ventas.price) > 98.00);
