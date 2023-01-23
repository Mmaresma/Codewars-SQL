--SQL: 8 kyu - Third Angle of a Triangle
--https://www.codewars.com/kata/5a023c426975981341000014

SELECT 
  TRI.a, 
  TRI.b, 
  180 - (TRI.a + TRI.b) AS res 
FROM otherangle as TRI;
