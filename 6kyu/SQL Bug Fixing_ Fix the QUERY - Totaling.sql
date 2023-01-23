--SQL: 6 kyu - SQL Bug Fixing: Fix the QUERY - Totaling
--https://www.codewars.com/kata/582cba7d3be8ce3a8300007c

SELECT 
  DATE(ventas.transaction_date) AS day, 
  departamento.name AS department, 
  COUNT(ventas.id) AS sale_count
FROM department departamento
  INNER JOIN sale as ventas
  ON departamento.id = ventas.department_id
GROUP BY 
  day, 
  departamento.name
ORDER BY day ASC;
