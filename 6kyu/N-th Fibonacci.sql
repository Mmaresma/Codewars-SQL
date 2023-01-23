--SQL: 6 kyu - N-th Fibonacci
--https://www.codewars.com/kata/522551eee9abb932420004a0

SELECT DISTINCT f.n, 
CAST(
	FLOOR(0.5 + (POWER(0.5 * (1 + SQRT(5)), f.n - 1)) / SQRT(5)) AS BIGINT) 
AS res FROM fibo AS f
ORDER BY f.n ASC;
