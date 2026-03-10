--all records in the online retail dataset
SELECT * FROM online_retail;

--Total Revenue
SELECT ROUND(SUM(Revenue), 2) AS total_sales
FROM online_retail
WHERE Quantity > 0;

--Total Return Loss
SELECT 
ROUND(SUM(Return_Amount), 2) AS total_return_loss
FROM online_retail;

--Net Revenue After Returns
SELECT 
ROUND(SUM(Revenue) - SUM(Return_Amount), 2) AS net_revenue
FROM online_retail
WHERE Quantity > 0;

--Return Rate %
SELECT 
(SUM(Return_Amount) * 100.0) / 
SUM(CASE WHEN Quantity > 0 THEN Revenue ELSE 0 END) 
AS return_rate_percent
FROM online_retail;

--Top 10 Products With Highest Return Rate
SELECT 
Description,
SUM(Return_Amount) AS return_loss,
SUM(Revenue) AS total_revenue
FROM online_retail
GROUP BY Description
ORDER BY return_loss DESC
LIMIT 10;

--Return Loss by Country
SELECT 
Country,
ROUND(SUM(Return_Amount), 2) AS return_loss
FROM online_retail
GROUP BY Country
ORDER BY return_loss DESC;

--Top 10 Products by Return Loss
SELECT 
Description,
ROUND(SUM(Return_Amount),2) AS return_loss
FROM online_retail
WHERE Description NOT IN (
'POSTAGE',
'Manual',
'CRUK Commission',
'Discount'
)
GROUP BY Description
ORDER BY return_loss DESC
LIMIT 10;

--What % of total return loss comes from the top product
SELECT 
ROUND(
(168469.6 * 100.0) / 
(SELECT SUM(Return_Amount) FROM online_retail),2) AS top_product_return_percent;

--Monthly Return Trend
SELECT 
strftime('%Y-%m', InvoiceDate) AS month,
ROUND(SUM(Return_Amount),2) AS monthly_return_loss
FROM online_retail
GROUP BY month
ORDER BY month;

--Top Customers by Return
SELECT 
CustomerID,
ROUND(SUM(Return_Amount),2) AS total_return_loss
FROM online_retail
GROUP BY CustomerID
ORDER BY total_return_loss DESC
LIMIT 10;

--Customer Return Behavior
SELECT 
CustomerID,
ROUND(SUM(Return_Amount),2) AS total_return_loss,
ROUND((SUM(Return_Amount) * 100.0) / 
(SELECT SUM(Return_Amount) FROM online_retail),2) AS percent_of_total_returns
FROM online_retail
GROUP BY CustomerID
ORDER BY total_return_loss DESC
LIMIT 10;

--Returns by Invoice Type
SELECT
InvoiceNo,
COUNT(*) AS total_items,
ROUND(SUM(Return_Amount),2) AS total_return_loss
FROM online_retail
WHERE Quantity < 0
GROUP BY InvoiceNo
ORDER BY total_return_loss DESC;

--Average Return Amount per Transaction
SELECT
ROUND(AVG(Return_Amount),2) AS avg_return_per_transaction
FROM online_retail
WHERE Quantity < 0;

--Returns by Quantity Size
SELECT
CASE
WHEN ABS(Quantity) <= 5 THEN 'Small'
WHEN ABS(Quantity) BETWEEN 6 AND 20 THEN 'Medium'
ELSE 'Large'
END AS return_size,
COUNT(*) AS num_returns,
ROUND(SUM(Return_Amount),2) AS total_return_loss
FROM online_retail
WHERE Quantity < 0
GROUP BY return_size;

--Return Size Analysis 
SELECT
CASE
WHEN ABS(Quantity) <= 5 THEN 'Small'
WHEN ABS(Quantity) BETWEEN 6 AND 20 THEN 'Medium'
ELSE 'Large'
END AS return_size,
COUNT(*) AS num_returns,
ROUND(SUM(Return_Amount),2) AS total_return_loss
FROM online_retail
WHERE Quantity < 0
GROUP BY return_size;

