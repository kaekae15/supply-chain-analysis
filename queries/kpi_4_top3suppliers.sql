-- (4) top 3 revenue producing suppliers
SELECT ROUND(SUM(`Revenue generated`),2) AS Revenue, `Supplier name` AS Supplier
FROM supply_chain_data
GROUP BY Supplier
ORDER BY Revenue DESC
LIMIT 3;
