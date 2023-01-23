--SQL: 8 kyu - Fake Binary
--https://www.codewars.com/kata/57eae65a4321032ce000002d

SELECT 
  fb.x, 
  TRANSLATE(fb.x, '0123456789', '0000011111') AS res 
FROM fakebin as fb;
