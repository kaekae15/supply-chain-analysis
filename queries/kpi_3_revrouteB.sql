-- (3) revenue from route B (1 decimal place)
SELECT ROUND(SUM(`Revenue generated`),1) AS `Revenue From Route B`
FROM supply_chain_data
WHERE `Routes` LIKE 'Route A';