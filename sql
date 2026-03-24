-- Top Customers
SELECT CustomerID, SUM(TotalPrice) AS revenue
FROM retail
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;

-- Monthly Revenue
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS month,
SUM(TotalPrice) AS revenue
FROM retail
GROUP BY month;

-- Top Products
SELECT Description, SUM(Quantity) AS total_sold
FROM retail
GROUP BY Description
ORDER BY total_sold DESC
LIMIT 10;

-- Country-wise Sales
SELECT Country, SUM(TotalPrice) AS revenue
FROM retail
GROUP BY Country
ORDER BY revenue DESC;
