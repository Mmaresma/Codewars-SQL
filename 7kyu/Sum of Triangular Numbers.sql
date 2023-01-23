--SQL: 7 kyu - Sum of Triangular Numbers
--https://www.codewars.com/kata/580878d5d27b84b64c000b51

SELECT n,
CASE WHEN n < 1 THEN 0 ELSE n * (n + 1) * (n + 2) / 6
END
AS res FROM sumtriangular;
