CREATE TABLE Global_SuperStore (Row_ID int PRIMARY KEY,
								Order_ID varchar,
								Order_Date date,
								Ship_Date date,
								Ship_Mode varchar,	
								Customer_ID varchar,
								Customer_Name varchar,
								Segment varchar,
								City varchar,	
								State varchar,	
								Country	varchar,
								Market varchar,	
								Region varchar,
								Product_ID varchar,	
								Category varchar,
								Sub_Category varchar,
								Product_Name varchar,
								Sales float,	
								Quantity int,	
								Discount float,	
								Profit float,	
								Shipping_Cost float,
								Order_Priority varchar)

SELECT * FROM Global_SuperStore

COPY Global_SuperStore
FROM 'C:\Program Files\PostgreSQL\15\bin\MY DATA\Global_SuperStore.csv'
DELIMITER ','
CSV HEADER;

--QUESTION 1A
SELECT Country, sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Order_date BETWEEN '2014-01-01' AND '2014-12-31'
GROUP BY Country
ORDER BY Total_Profit desc
LIMIT 3


SELECT * FROM Global_SuperStore
SELECT DISTINCT Country
from Global_superstore

--QUESTION 1B1
SELECT Product_name, sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Order_date BETWEEN '2014-01-01' AND '2014-12-31' AND Country = 'United States'
GROUP BY Product_name
ORDER BY Total_Profit desc
LIMIT 3

--QUESTION 1B2
SELECT Product_name, sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Order_date BETWEEN '2014-01-01' AND '2014-12-31' AND Country = 'India'
GROUP BY Product_name
ORDER BY Total_Profit desc
LIMIT 3

--QUESTION 1B3
SELECT Product_name, sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Order_date BETWEEN '2014-01-01' AND '2014-12-31' AND Country = 'China'
GROUP BY Product_name
ORDER BY Total_Profit desc
LIMIT 3

--QUESTION 2
SELECT sub_category, avg(shipping_cost) AS Average_Shipping_Cost
FROM Global_Superstore
WHERE Country = 'United States'
GROUP BY sub_category
ORDER BY Average_Shipping_Cost DESC
LIMIT 3

--QUESTION 3A1
SELECT Country, sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Country = 'Nigeria' AND Order_date BETWEEN '2014-01-01' AND '2014-12-31'
GROUP BY Country

--QUESTION 3A2
SELECT Country, sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Region = 'Africa' AND Order_date BETWEEN '2014-01-01' AND '2014-12-31'
GROUP BY Country
ORDER BY Total_Profit ASC


--QUESTION 3B
SELECT Country, SUM(shipping_cost) AS Total_shipping_cost, avg(discount) AS Average_discount, 
       avg(sales) AS Average_sales,  sum(profit) AS Total_Profit
FROM Global_Superstore
WHERE Country = 'Nigeria' AND Order_date BETWEEN '2014-01-01' AND '2014-12-31'
GROUP BY Country
ORDER BY Total_shipping_cost DESC

SELECT * FROM Global_superstore
SELECT DISTINCT Region FROM Global_superstore


SELECT DISTINCT Country 
FROM Global_superstore
WHERE Region = 'Southeast Asia' 
SELECT DISTINCT country from global_superstore
WHERE Region = 'Oceania'
/*SELECT Sub_category, sum(profit) AS Total_Profit
FROM Global_superstore
WHERE Region = 'Southeast Asia' 
GROUP BY Sub_category
ORDER BY Total_profit ASC */

--QUESTION 4
SELECT sub_category, sum(profit) AS Total_Profit
FROM Global_superstore
WHERE region = 'Southeast Asia'
GROUP BY /*country,*/ sub_category
ORDER BY Total_profit ASC
limit 10

--QUESTION 5A
SELECT City, quantity, avg(profit) AS Average_Profit
FROM Global_superstore
WHERE country = 'United States' AND NOT quantity < 10
GROUP BY City, quantity
ORDER BY Average_profit ASC
LIMIT 5

--QUESTON 5B
SELECT City, avg(shipping_cost) AS Average_shipping_cost, order_priority, sum(discount) AS Total_discount, 
       avg(sales) AS Average_sales, quantity, avg(profit) AS Average_Profit
FROM Global_superstore
WHERE country = 'United States' AND NOT quantity < 10
GROUP BY City, quantity, order_priority
ORDER BY Average_shipping_cost DESC
LIMIT 1

SELECT * FROM Global_superstore

SELECT City, sum(shipping_cost) AS Total_shipping_cost, order_priority, sum(discount) AS Total_discount, 
       sum(sales) AS Total_sales, quantity, avg(profit) AS Average_Profit
FROM Global_superstore
WHERE country = 'United States' AND NOT quantity < 10
GROUP BY City, quantity, order_priority
ORDER BY Total_shipping_cost DESC

SELECT city, shipping_cost, sales, discount, quantity, profit
FROM Global_superstore
WHERE City = 'Concord'  AND NOT quantity < 10

SELECT City, avg(profit) AS Average_Profit, shipping_cost, sales, discount
FROM Global_superstore
WHERE country = 'United States'  AND NOT quantity < 10
GROUP BY City, shipping_cost, sales, discount

--QUESTION 6
SELECT sub_category, avg(profit) AS Average_Profit
FROM Global_superstore
WHERE country = 'Australia'
GROUP BY Sub_category
ORDER BY Average_profit DESC
LIMIT 5

SELECT * FROM Global_superstore

--QUESTION 7B
SELECT customer_name, category, sub_category, product_name, sum(sales) AS Total_sales, avg(profit) AS Average_profit
FROM Global_superstore
GROUP BY Customer_name, category, sub_category, product_name
ORDER BY  Average_profit DESC
LIMIT 10

COPY People
FROM 'C:\Program Files\PostgreSQL\15\bin\MY DATA\People.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM People

COPY Returns
FROM 'C:\Program Files\PostgreSQL\15\bin\MY DATA\Returns.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM Returns

