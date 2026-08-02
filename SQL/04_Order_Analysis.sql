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
/*
==========================================================
Business Question 12

Top 10 Largest Orders by Sales
==========================================================
*/

SELECT
    `Order ID`,
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS Order_Value
FROM superstore
GROUP BY
    `Order ID`,
    `Customer Name`
ORDER BY Order_Value DESC
LIMIT 10;
/*
==========================================================
Business Question 13

Sales by Shipping Mode
==========================================================
*/

SELECT
    `Ship Mode`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;