--SQL: 8 kyu - Remove exclamation marks
--https://www.codewars.com/kata/57a0885cbb9944e24c00008e

SELECT 
quitaexcamacion.s, 
REPLACE(quitaexcamacion.s, '!', '') AS res 
FROM removeexclamationmarks as quitaexcamacion;
