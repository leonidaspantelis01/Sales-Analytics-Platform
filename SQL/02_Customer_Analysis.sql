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