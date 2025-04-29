
CREATE DATABASE sales;

CREATE TABLE superstore_sales (
    order_id      VARCHAR(50),
    order_date    DATE,
    product_id    VARCHAR(50),
    total_price   DECIMAL(10,2)
);

-- Data is imported into superstore_sales table through table data import wizard method -- 

SELECT * FROM superstore_sales;

-- Aggregate monthly revenue and distinct product count
SELECT
  EXTRACT(YEAR FROM order_date) AS Year,
  EXTRACT(MONTH FROM order_date) AS Month,
  SUM(total_price) AS TotalRevenue,
  COUNT(DISTINCT order_id) AS OrderVolume
FROM superstore_sales
GROUP BY Year, Month
ORDER BY Year, Month;