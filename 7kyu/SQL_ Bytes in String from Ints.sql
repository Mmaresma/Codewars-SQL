--SQL: 7 kyu - SQL: Bytes in String from Ints
--https://www.codewars.com/kata/59491429952ac97ad9000106

/*  SQl  */
select length(number1::text) as octnum1,
       length(number2::text) as octnum2,
       length(number3::text) as octnum3,
       length(number4::text) as octnum4,
       length(number5::text) as octnum5
from numbers;
