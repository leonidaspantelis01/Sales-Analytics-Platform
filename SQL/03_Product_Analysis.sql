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
/*
============================================================
Business Question 6

Top 10 Products by Profit

============================================================
*/

SELECT
    `Product Name`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;