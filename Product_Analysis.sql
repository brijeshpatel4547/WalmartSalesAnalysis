-- ----------------------------
-- Exploratory Data Analysis
-- ----------------------------

-- 1.How many unique cities does the data have?
SELECT DISTINCT CITY
FROM walmart_sales;

-- 2.In which city is each branch?
SELECT DISTINCT BRANCH, CITY
FROM walmart_sales;


-- --------------------
-- Product Analysis
-- --------------------

-- 3. No. of Unique Product Line does the data have?
Select count(distinct Product_line) as No_of_Product_Lines
from walmart_sales;

-- 4. Most common payment method used
Select payment_method,count(payment_method) as No_Of_times_method_used
from walmart_sales
GROUP BY 1
ORDER BY 2 DESC;
-- LIMIT 1 => Add if you want only most common payment that was used

-- 5. What is the most selling product line?
SELECT product_line, count(product_line) as Sold_ProductLines
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 6. What is the total revenue by month?
SELECT month_name as Month,
		SUM(total) as Revenue
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 7. What month had the largest Cost of Goods Sold?
SELECT month_name as Month,
	   SUM(cost_of_goods_sold) as Total_Cost_of_goods_sold
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 8. What product line had the largest revenue?
SELECT product_line, sum(total) as Product_Line_Revenue
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 9. What is the city with the largest revenue?
SELECT city, sum(total) as City_Wise_Revenue
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 10. What product line had the largest VAT?
SELECT product_line,sum(valuable_tax) as Total_Valuable_Tax
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 11. Which branch sold more products than average product sold?
WITH t1 AS (
	SELECT Branch, SUM(quantity) as Products_Sold
	FROM walmart_sales
	GROUP BY 1
)
SELECT Branch, Products_Sold
FROM T1
WHERE Products_Sold > (Select AVG(quantity) from walmart_sales)

-- 12. What is the most common product line by gender?

SELECT gender,product_line, count(product_line) as Product_Line_Count
FROM walmart_sales
GROUP BY 1,2
Order by 1,3 desc

-- 13. What is the average rating of each product line?
SELECT product_line, avg(rating) as Average_Rating
FROM walmart_sales
GROUP BY 1;

