--SQL: 7 kyu - SQL Basics: Simple JOIN
--https://www.codewars.com/kata/5802e32dd8c944e562000020

SELECT 
  productos.*, 
  cia.name as company_name 
FROM products as productos 
JOIN companies as cia ON productos.company_id = cia.id;
