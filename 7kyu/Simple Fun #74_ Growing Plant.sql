--SQL: 7 kyu - Simple Fun #74: Growing Plant
--https://www.codewars.com/kata/58941fec8afa3618c9000184

SELECT 
  cultivo.id, 
  CASE WHEN cultivo.desired_height <= cultivo.up_speed THEN 1
  ELSE CEIL((cultivo.desired_height - cultivo.up_speed)::decimal / (cultivo.up_speed - cultivo.down_speed))::int + 1 END AS num_days
FROM growing_plant as cultivo;
