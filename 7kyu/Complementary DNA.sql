--SQL: 7 kyu - Complementary DNA
--https://www.codewars.com/kata/554e4a2f232cdd87d9000038

SELECT 
  ADN.dna, 
  TRANSLATE(ADN.dna, 'CGAT', 'GCTA') AS res 
FROM dnastrand as ADN;
