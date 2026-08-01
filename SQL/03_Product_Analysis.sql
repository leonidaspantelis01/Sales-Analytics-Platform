 /*
============================================================
Business Question 5

Top 10 Products by Sales

============================================================
*/

SELECT
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;