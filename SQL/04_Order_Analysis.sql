 /*
==========================================================
Business Question 10

Top 10 Customers by Number of Orders
==========================================================
*/

SELECT
    `Customer Name`,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Orders DESC
LIMIT 10;
/*
==========================================================
Business Question 11

Average Order Value (AOV)
==========================================================
*/

SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    ROUND(
        SUM(Sales) / COUNT(DISTINCT `Order ID`),
        2
    ) AS Average_Order_Value
FROM superstore;