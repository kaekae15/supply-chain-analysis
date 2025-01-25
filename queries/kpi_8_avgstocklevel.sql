-- (8) average stock level by category
SELECT `Product type` AS Product, AVG(`Stock levels`) AS `Avg Stock Levels`
FROM supply_chain_data
GROUP BY Product;