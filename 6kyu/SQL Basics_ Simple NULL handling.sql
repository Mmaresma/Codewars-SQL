--SQL: 6 kyu - SQL Basics: Simple NULL handling
--https://www.codewars.com/kata/5811315e04adbbdb5000050e

SELECT 
  ventasEU.id,
  COALESCE( NULLIF(ventasEU.name, ''), '[product name not found]' ) AS name,
  ventasEU.price,
  COALESCE( NULLIF(ventasEU.card_name, ''), '[card name not found]' ) AS card_name,
  ventasEU.card_number,
  ventasEU.transaction_date
FROM eusales AS ventasEU
WHERE ventasEU.price > 50
