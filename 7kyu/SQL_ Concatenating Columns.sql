--SQL: 7 kyu - SQL: Concatenating Columns
--https://www.codewars.com/kata/59440034e94fae05b2000073

SELECT 
  concat(nombres.prefix, ' ', 
         nombres.first, ' ', 
         nombres.last, ' ', 
         nombres.suffix) as title 
FROM names as nombres;
