--SQL: 8 kyu - Easy SQL: Square Root and Log
--https://www.codewars.com/kata/594a691720ac16a544000075

SELECT
    POWER(d.number1, 0.5) AS root,
    LOG(d.number2)
FROM decimals as d;
