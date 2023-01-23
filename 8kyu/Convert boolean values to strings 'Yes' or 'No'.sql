--SQL: 8 kyu - Convert boolean values to strings 'Yes' or 'No'.
--https://www.codewars.com/kata/53369039d7ab3ac506000467

SELECT 
  boleanas.bool,
  CASE
     WHEN boleanas.bool = 'true' THEN 'Yes'
     ELSE 'No'
  END
AS res 
FROM booltoword as boleanas;
