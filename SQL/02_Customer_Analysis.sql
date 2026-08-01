/*
============================================================
Business Question 2
Top 10 Customers by Total Sales
============================================================
*/

SELECT
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
/*
============================================================
Business Question 3

Top 10 Customers by Total Profit

============================================================
*/

SELECT
    `Customer Name`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;
/*
============================================================
Business Question 4

Top 10 Customers by Number of Orders

============================================================
*/

SELECT
    `Customer Name`,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Orders DESC
LIMIT 10;