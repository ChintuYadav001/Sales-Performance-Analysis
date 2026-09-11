SELECT * 
FROM sales
LIMIT 5;
---1. Total Sales
SELECT
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales;

--2. Total Orders
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;

--3. Total Customers
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM sales;

--4. Average Order Value (AOV)
SELECT 
    ROUND(
        SUM(sales)::numeric / COUNT(DISTINCT order_id), 
        2
    ) AS average_order_value
FROM sales;

-----------------------------------------------------------Regional Performance-------------------------------------------------------------
--5. Sales by Region
SELECT 
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

--6. Orders by Region
SELECT 
    region,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_orders DESC;

--7. Average Order Value by Region
SELECT 
    region,
    ROUND(
        SUM(sales)::numeric / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM sales
GROUP BY region
ORDER BY average_order_value DESC;

----------------------------------------------------------------Category & Product Performance-----------------------------------------------
--8. Sales by Category
SELECT 
    category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

--9. Sales by Sub-Category
SELECT 
    sub_category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC;

--10. Top 10 Products by Sales
SELECT 
    product_name,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

--11. Bottom 10 Products by Sales
SELECT 
    product_name,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales ASC
LIMIT 10;

--Top Product in Each Category
WITH product_sales AS (
    SELECT
        category,
        product_name,
        SUM(sales) AS total_sales
    FROM sales
    GROUP BY category, product_name
),
ranked_products AS (
    SELECT
        category,
        product_name,
        total_sales,
        RANK() OVER (
            PARTITION BY category
            ORDER BY total_sales DESC
        ) AS product_rank
    FROM product_sales
)
SELECT
    category,
    product_name,
    ROUND(total_sales::numeric, 2) AS total_sales
FROM ranked_products
WHERE product_rank = 1
ORDER BY category;

----------------------------------------------------------Time & Seasonality Analysis--------------------------------------------------------
--13. Yearly Sales Trend
SELECT 
    year,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY year
ORDER BY year;

--14. Monthly Sales Trend
SELECT 
    year,
    month,
    month_name,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY year, month, month_name
ORDER BY year, month;

--15. Quarterly Sales Performance
SELECT 
    year,
    quarter,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY year, quarter
ORDER BY year, quarter;

--16. Seasonal Sales Performance
SELECT 
    season,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY season
ORDER BY total_sales DESC;

------------------------------------------------------------Shipping Performance------------------------------------------------------------
--17. Sales by Shipping Mode
SELECT 
    ship_mode,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY ship_mode
ORDER BY total_sales DESC;

--18. Average Shipping Days by Shipping Mode
SELECT 
    ship_mode,
    ROUND(AVG(shipping_days), 2) AS average_shipping_days
FROM sales
GROUP BY ship_mode
ORDER BY average_shipping_days ASC;

------------------------------------------------------------Customer Analysis----------------------------------------------------------------
--19. Top 10 Customers by Sales
SELECT 
    customer_id,
    customer_name,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;

--20. Region + Category Performance
SELECT 
    region,
    category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales
FROM sales
GROUP BY region, category
ORDER BY region, total_sales DESC;