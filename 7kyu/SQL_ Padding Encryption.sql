--SQL: 7 kyu - SQL: Padding Encryption
--https://www.codewars.com/kata/5943b797d8c9432eb7000066

SELECT 
  CONCAT(md5, REPEAT('1', LENGTH(sha256) - LENGTH(md5))) as md5,
  CONCAT(REPEAT('0', LENGTH(sha256)- LENGTH(sha1)), sha1) as sha1, 
  sha256
FROM encryption;
