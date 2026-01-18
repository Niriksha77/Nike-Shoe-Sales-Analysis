--1. What is the total revenue?

SELECT SUM(total_sales) AS total_revenue
FROM nike_sales;

--2. Which products sell the most units?
SELECT product, SUM(units_sold) AS total_units
FROM nike_sales
GROUP BY product
ORDER BY total_units DESC
LIMIT 10;

--3. Which regions generate the highest sales?
SELECT region, SUM(total_sales) AS revenue
FROM nike_sales
GROUP BY region
ORDER BY revenue DESC;

--4. Which retailers contribute most to revenue?
SELECT retailer, SUM(total_sales) AS revenue
FROM nike_sales
GROUP BY retailer
ORDER BY revenue DESC;

--5. How do sales differ by sales method?
SELECT sales_method, SUM(total_sales) AS revenue
FROM nike_sales
GROUP BY sales_method
ORDER BY revenue DESC;

--6. Monthly sales trend
SELECT
    EXTRACT(MONTH FROM invoice_date) AS month,
    SUM(total_sales) AS revenue
FROM nike_sales
GROUP BY EXTRACT(MONTH FROM invoice_date)
ORDER BY month;


--7. Which states sell the most units?
SELECT state, SUM(units_sold) AS total_units
FROM nike_sales
GROUP BY state
ORDER BY total_units DESC
LIMIT 10;

--8. Average price per unit by region
SELECT region, AVG(price_per_unit) AS avg_price
FROM nike_sales
GROUP BY region
ORDER BY avg_price DESC;

--9. Top products by revenue
SELECT product, SUM(total_sales) AS revenue
FROM nike_sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;

--10. Quarterly sales performance
SELECT
    EXTRACT(QUARTER FROM invoice_date) AS quarter,
    SUM(total_sales) AS revenue
FROM nike_sales
GROUP BY EXTRACT(QUARTER FROM invoice_date)
ORDER BY quarter;

