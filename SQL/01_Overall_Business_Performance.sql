/*
============================================================
Business Question 1
Overall Business Performance
============================================================
*/

SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity_Sold,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;