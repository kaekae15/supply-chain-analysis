# Supply Chain Analysis

## Overview
This project uses Excel, SQL, and Tableau to perform data cleaning, analyzing and extracting, and KPIs to gather insights from the supply chain dataset. 

## Compatibility Notes
The SQL scripts were created with MySQL. 

## Data Cleaning
The original csv file needed to undergo data cleaning so the file could successfully be imported into SQL.
### Original Data 
<img width="1440" alt="original excel data" src="https://github.com/user-attachments/assets/0a5fe6b8-7628-4862-b676-a5aa4f4e0b86" />

### File Issue
The numbers were in text format and needed to be converted into number format for SQL extraction. 
<img width="482" alt="data cleaning-supply" src="https://github.com/user-attachments/assets/c5aeed92-6229-4605-bbdb-6e7123072685" />

### Conversion Text-To-Number
<img width="1440" alt="text_to_num-supply" src="https://github.com/user-attachments/assets/4b15173e-714f-493d-a880-926e29f9fa8a" />


## KPIs
### 1. Total Revenue 
SELECT ROUND(SUM(`Revenue generated`),2) AS `Total Revenue`
FROM supply_chain_data;
### Result
<img width="140" alt="kpi1-supply" src="https://github.com/user-attachments/assets/6206dbe9-b096-408a-a148-6f377a25e906" />

### 2. Average Revenue
SELECT ROUND(AVG(`Revenue generated`),0) AS `Avg Revenue`
FROM supply_chain_data;
### Result
<img width="149" alt="kpi2-supply" src="https://github.com/user-attachments/assets/cdc5918f-1c5c-4f80-824a-7abd72efeaf9" />

### 3. Revenue From Route B
SELECT ROUND(SUM(`Revenue generated`),1) AS `Revenue From Route B`
FROM supply_chain_data
WHERE `Routes` LIKE 'Route A';
### Result
<img width="174" alt="kpi3-supply" src="https://github.com/user-attachments/assets/aff91ef5-13ec-4097-a33a-fa4651bd3f3e" />

### 4. Top 3 Producing Suppliers In Revenue
SELECT ROUND(SUM(`Revenue generated`),2) AS Revenue, `Supplier name` AS Supplier
FROM supply_chain_data
GROUP BY Supplier
ORDER BY Revenue DESC
LIMIT 3;
### Result
<img width="154" alt="kpi4-supply" src="https://github.com/user-attachments/assets/ecae51d8-0d6f-4df9-9d13-af9874335b20" />

### 5. Number of Products Sold
SELECT SUM(`Number of products sold`) AS `Total Products Sold`
FROM supply_chain_data;
### Result
<img width="139" alt="kpi5-supply" src="https://github.com/user-attachments/assets/a7f122d0-eda1-4640-8084-50bb6b7693c5" />

### 6. Total Inventory 
SELECT SUM(`Stock levels`) AS `Total Inventory`
FROM supply_chain_data;
### Result
<img width="123" alt="kpi6-supply" src="https://github.com/user-attachments/assets/14628c34-f433-45ba-9cca-f09a4c57ddcd" />

### 7. Amount of Products with Stock Level Under 20
SELECT `Product type` AS Product, COUNT(`Stock levels`) AS 'Amt Under 20'
FROM supply_chain_data
WHERE 'Amt Under 20' < 20
GROUP BY Product;
### Result
<img width="168" alt="kpi7-supply" src="https://github.com/user-attachments/assets/6b5295e5-80e0-49fd-a73c-7488e3db90e5" />

### 8. Average Stock Level
SELECT `Product type` AS Product, AVG(`Stock levels`) AS `Avg Stock Levels`
FROM supply_chain_data
GROUP BY Product;
### Result
<img width="174" alt="kpi8-supply" src="https://github.com/user-attachments/assets/dca126be-93f0-49ff-9e40-5eb09b5a13b4" />

### 9. Product Type with the Highest Sales
SELECT `Product type` AS `Product Type` , SUM(`Number of products sold`) AS `Number Sold`
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY `Number Sold` DESC
LIMIT 1;
### Result
<img width="178" alt="kpi9-supply" src="https://github.com/user-attachments/assets/321d94da-cb3c-48a1-9eb2-b6070b459aca" />

### 10. Sales By Demographics
SELECT SUM(`Number of products sold`) AS 'Total Products Sold', `Customer demographics`
FROM supply_chain_data
GROUP BY `Customer demographics`;
### Result
<img width="273" alt="kpi10-supply" src="https://github.com/user-attachments/assets/759df3a4-7734-4ba0-acd8-df5f4068352c" />

### 11. Average Shipping Times By Product Types
SELECT `Product type`,ROUND(AVG(`Shipping times`),2) AS 'Avg Shipping Times'
FROM supply_chain_data
GROUP BY `Product type`;
### Result
<img width="226" alt="kpi11-supply" src="https://github.com/user-attachments/assets/b830a3e2-bbde-4441-9956-9cf540b0021a" />

## Tableau Dashboard 
### Finished Product
<img width="1440" alt="supplychaintableau" src="https://github.com/user-attachments/assets/71d00f62-6a30-45e5-ab7c-369c61676346" />


## How to Use
- Excel file is in the `excel/` folder.
- Screenshots of queries are in the `screenshots/` folder.
- SQL queries are in the `queries/` folder.
- Tableau dashboard is in the `tableau_dashboard/` folder.

## Technologies Used
- Excel
- SQL
- Tableau
- Git/GitHub
