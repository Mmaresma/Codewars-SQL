--SQL: 6 kyu - SQL Basics: Simple WITH
--https://www.codewars.com/kata/5811501c2d35672d4f000146

WITH special_sales AS
  (
  SELECT 
    * 
  FROM sales as ventas
  WHERE (ventas.price) > 90.00
  )

SELECT departamentos.id, departamentos.name FROM departments as departamentos
  WHERE id IN ( SELECT 
                  ventas.department_id 
                FROM sales as ventas 
                  WHERE (ventas.price) > 90.00
              ); 
