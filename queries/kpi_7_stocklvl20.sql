-- (7) amount of products with stock levels below 20 
SELECT `Product type` AS Product, COUNT(`Stock levels`) AS 'Amt Under 20'
FROM supply_chain_data
WHERE 'Amt Under 20' < 20
GROUP BY Product;