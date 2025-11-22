
-- 1) Which products generate the most revenue and the most profit? 

With product_stats AS (
	SELECT 
		product_id,
        product_name,
        category,
        sub_category,
        ROUND(SUM(sales), 2) AS total_sales,
        ROUND(SUM(profit), 2) AS total_profit,
        ROUND(SUM(quantity), 2) AS total_quantity
	FROM retail_supply.retail
    GROUP BY product_id, product_name, category, sub_category
)
SELECT * 
FROM product_stats
ORDER BY total_sales DESC;

-- 2) Which cities drive the highest sales?

SELECT 
	city,
    state,
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_supply.retail
GROUP BY city, state, region
ORDER BY total_sales DESC;

-- 3) Which segments (Consumer, Corporate, Home Office) are most profitable?

SELECT 
	segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quqntity
FROM retail_supply.retail
GROUP BY segment
ORDER BY total_profit DESC;

-- 4) What categories and subcategories perform best?

SELECT 
	category, 
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_supply.retail
GROUP BY category, sub_category
ORDER BY total_sales DESC;

-- 5) How do discounts impact profit?

SELECT 
	discount,
    COUNT(*) AS transaction_count,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit
FROM retail_supply.retail
GROUP BY discount
ORDER BY discount;

-- 6) Which orders had negative profit, and why?

SELECT
	order_id,
    product_name,
    category,
    sales,
    quantity,
    discount,
    profit
FROM retail_supply.retail
WHERE profit < 0
ORDER BY profit ASC;

-- 7) What's the sales and profit trend over time (monthly)? 

WITH Monthly AS (
	SELECT
		DATE_FORMAT(order_date, '%Y-%m') AS year__month,
        ROUND(SUM(sales), 2) AS total_sales,
        ROUND(SUM(profit), 2) AS total_profit
	FROM retail_supply.retail
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT *
FROM Monthly
ORDER BY total_sales DESC;

-- Which customers bring the most revenue?

SELECT
	customer_id,
    customer_name,
    segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_supply.retail
GROUP BY customer_id, customer_name, segment
ORDER BY total_sales DESC;

-- 9) Shipping analysis which ship modes are most used and most profitable?

SELECT 
	ship_mode,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    AVG(delivery_in_days) AS avg_delivery_days 
FROM retail_supply.retail
GROUP BY ship_mode
ORDER By total_sales DESC;

-- 10) Returned items how do returns affect total performance?
 
 WITH most_returns AS (
	SELECT
		returned,
        ROUND(SUM(sales),2) AS total_sales,
        ROUND(SUM(profit),2) AS total_profit,
        COUNT(*) AS total_orders
	FROM retail_supply.retail
    GROUP BY returned
)
SELECT *
FROM most_returns
ORDER BY total_sales DESC;


                            







