--SQL: 7 kyu - Easy SQL: Cube Root and Natural Log
--https://www.codewars.com/kata/594a6ad320ac16a54400007f

SELECT
  CBRT(DECI.NUMBER1)AS CUBEROOT,
  LN(DECI.NUMBER2)AS LOGARITHM
FROM
  DECIMALS as DECI;
