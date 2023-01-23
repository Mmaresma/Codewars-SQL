--SQL: 7 kyu - First and last IP in a network
--https://www.codewars.com/kata/5db5ff03d10bfa001da9cf2e

SELECT 
  c.id,
  NETWORK(c.ip_address) AS first_address,
  BROADCAST(c.ip_address) AS last_address 
FROM connections as c;
