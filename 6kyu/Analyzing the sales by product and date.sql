--SQL: 6 kyu - Analyzing the sales by product and date
--https://www.codewars.com/kata/5dac87a0abe9f1001f39e36d

SELECT
  name as product_name,
  extract(year from date)::int as year,
  extract(month from date)::int as month,
  extract(day from date)::int as day,
  sum(price*count) as total
FROM sales_details as ventas_detalle 

JOIN sales on ventas_detalle.sale_id = sales.id
JOIN products on ventas_detalle.product_id = products.id
GROUP BY name, rollup(year, month, day)
ORDER BY product_name, year, month, day
