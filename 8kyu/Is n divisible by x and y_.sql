--SQL: 8 kyu - Is n divisible by x and y?
--https://www.codewars.com/kata/5545f109004975ea66000086

SELECT K.ID,
CASE
  WHEN k.n%x!=0 OR k.n%y!=0 THEN false
  WHEN k.n%x=0 AND k.n%y=0 THEN true
END AS res 
FROM kata as K;
