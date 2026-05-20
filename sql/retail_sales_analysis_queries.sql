
--- TABLE CREATION------

CREATE TABLE IF NOT EXISTS retail_sales (
         transaction_id VARCHAR(20) PRIMARY KEY,
         sale_date DATE,
         sale_time TIME,
         customer_id VARCHAR(20),
         gender VARCHAR(10),
         age INT,
         age_group VARCHAR(15),
         city VARCHAR(25),
         store_branch VARCHAR(30),
         membership_tier VARCHAR(25),
         sales_channel VARCHAR(25),
         category VARCHAR(40),
         product_name VARCHAR(100),
         quantity INT,
         price_per_unit NUMERIC(10,2),
         cogs NUMERIC(10,2),
         discount_event VARCHAR(30),
         discount_pct INT,
         discount_amount NUMERIC(10,2),
         total_sale NUMERIC(10,2),
         profit NUMERIC(10,2),
         profit_margin_pct NUMERIC(10,2),
         payment_method VARCHAR(20),
         customer_rating NUMERIC(3,2),
         return_flag VARCHAR(10)
);


--Sales Analytics----------------------------

--Transaction, Revenue, Profit, Order Value, Profit Margin & Customer Rting KPIs:

SELECT 
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(total_sale), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(total_sale), 2) AS avg_order_value,
    ROUND(AVG(profit_margin_pct), 2) AS avg_profit_margin,
    ROUND(AVG(customer_rating), 2) AS avg_customer_rating
FROM retail_sales;

--Monthly Revenue Trend:

SELECT
     TO_CHAR(sale_date::DATE, 'YYYY-MM') AS month,
     TO_CHAR(sale_date::DATE, 'Mon YYYY') AS month_label,
     COUNT(*) AS transactions,
     ROUND(SUM(total_sale), 2) AS total_revenue,
     ROUND(SUM(profit), 2) AS total_profit
FROM retail_sales
GROUP BY 
     TO_CHAR(sale_date::DATE, 'YYYY-MM'), 
     TO_CHAR(sale_date::DATE, 'Mon YYYY') 
ORDER BY month;


--Revenue by City
SELECT
     city,
     COUNT(*) AS transactions,
     ROUND(SUM(total_sale), 2) AS total_revenue,
     ROUND(SUM(profit), 2) AS total_profit,
     ROUND(AVG(profit_margin_pct), 2) AS avg_profit_margin,
     ROUND(AVG(customer_rating), 2) AS avg_customer_rating
FROM retail_sales
WHERE city IS NOT NULL
GROUP BY city
ORDER BY total_revenue DESC;


