-- (9) product type with the highest sales
SELECT `Product type` AS `Product Type` , SUM(`Number of products sold`) AS `Number Sold`
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY `Number Sold` DESC
LIMIT 1;