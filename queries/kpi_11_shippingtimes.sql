-- (11) average shipping times for product types
SELECT `Product type`,ROUND(AVG(`Shipping times`),2) AS 'Avg Shipping Times'
FROM supply_chain_data
GROUP BY `Product type`;

