-- (1) total revenue from supply chain (round 2 decimal places)
SELECT ROUND(SUM(`Revenue generated`),2) AS 'Total Revenue'
FROM supply_chain_data;