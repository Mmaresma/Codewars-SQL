--SQL: 8 kyu - Is it a palindrome?
--https://www.codewars.com/kata/57a1fd2ce298a731b20006a4

SELECT 
  ESP.str, 
  LOWER(ESP.str) = REVERSE(LOWER(ESP.str)) AS res 
  FROM ispalindrome as ESP;
