--SQL: 6 kyu - Conditional Count
--https://www.codewars.com/kata/5816a3ecf54413a113000074

SELECT
  EXTRACT(MONTH FROM pagos.payment_date) AS month,
  COUNT(pagos.rental_id) AS total_count,
  SUM(pagos.amount) AS total_amount,
  SUM(CASE WHEN pagos.staff_id = 1 THEN 1 ELSE 0 END) AS mike_count,
  SUM(CASE WHEN pagos.staff_id = 1 THEN pagos.amount ELSE 0 END) AS mike_amount,
  SUM(CASE WHEN pagos.staff_id = 2 THEN 1 ELSE 0 END) AS jon_count,
  SUM(CASE WHEN pagos.staff_id = 2 THEN pagos.amount ELSE 0 END) AS jon_amount
FROM payment as pagos
GROUP BY month
ORDER BY month
