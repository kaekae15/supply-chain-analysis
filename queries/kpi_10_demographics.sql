-- (10) total products sold by demographics
SELECT SUM(`Number of products sold`) AS 'Total Products Sold', `Customer demographics`
FROM supply_chain_data
GROUP BY `Customer demographics`;
