--SQL: 5 kyu - Count IP Addresses
--https://www.codewars.com/kata/526989a41034285187000de4

SELECT 
  IPA.id, 
  (inet(IPA.last) - inet(IPA.first)) AS ips_between 
  FROM ip_addresses as IPA;
