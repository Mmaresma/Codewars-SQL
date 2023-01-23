--SQL: 6 kyu - SQL Basics: Top 10 customers by total payments amount
--https://www.codewars.com/kata/580d08b5c049aef8f900007c

SELECT
  clientes.customer_id,
  clientes.email,
  COUNT(pagos.customer_id)::INT AS payments_count,
  SUM(pagos.amount)::FLOAT AS total_amount
FROM customer AS clientes, payment AS pagos
WHERE clientes.customer_id = pagos.customer_id
GROUP BY clientes.customer_id
ORDER BY total_amount DESC
LIMIT 10
