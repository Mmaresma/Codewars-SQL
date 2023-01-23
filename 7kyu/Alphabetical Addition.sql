--SQL: 7 kyu - Alphabetical Addition
--https://www.codewars.com/kata/5d50e3914861a500121e1958

SELECT 
  COALESCE(CHR(CAST((SUM(ascii(letras.letter) - 96)-1)%26 as int)+97), 'z')
as letter
FROM letters as letras;
