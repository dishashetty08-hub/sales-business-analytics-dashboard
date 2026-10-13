CREATE DATABASE IF NOT EXISTS sales_analytics;
USE sales_analytics;

CREATE TABLE sales (Sale_ID INT PRIMARY KEY, Date DATE, Customer VARCHAR(100), Product VARCHAR(100), Category VARCHAR(50), Region VARCHAR(30), Quantity INT, Sales DECIMAL(12,2), Cost DECIMAL(12,2), Profit DECIMAL(12,2));

-- Import sales_data.csv into this table using MySQL Workbench.

SELECT SUM(Sales) AS Total_Sales FROM sales;
SELECT SUM(Profit) AS Total_Profit FROM sales;
SELECT COUNT(*) AS Total_Orders FROM sales;
SELECT SUM(Quantity) AS Total_Quantity FROM sales;
SELECT Category, SUM(Sales) AS Total_Sales FROM sales GROUP BY Category ORDER BY Total_Sales DESC;
SELECT Region, SUM(Sales) AS Total_Sales FROM sales GROUP BY Region ORDER BY Total_Sales DESC;
SELECT Product, SUM(Sales) AS Total_Sales FROM sales GROUP BY Product ORDER BY Total_Sales DESC LIMIT 10;
SELECT Category, SUM(Profit) AS Total_Profit FROM sales GROUP BY Category ORDER BY Total_Profit DESC;
SELECT YEAR(Date) AS Year, MONTH(Date) AS Month, SUM(Sales) AS Total_Sales FROM sales GROUP BY YEAR(Date), MONTH(Date) ORDER BY Year, Month;
