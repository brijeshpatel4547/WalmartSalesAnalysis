-- ------------------------
-- Customer Analysis
-- ------------------------

-- 1. How many unique customer types does the data have?
SELECT distinct(customer_type)
FROM walmart_sales;

-- 2. How many unique payment methods does the data have?
SELECT DISTINCT(payment_method)
FROM walmart_sales;

-- 3. What is the most common customer type?
SELECT customer_type, count(*) as Customer_Count
from walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 4. Which customer type buys the most?
SELECT customer_type, SUM(quantity) as Quantity_Bought
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 5. Majority Gender among all customers
SELECT gender, count(*) as No_of_Customers
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;

-- 6. What is the gender distribution per branch?
SELECT branch, gender, count(*) as No_of_Customers
FROM walmart_sales
GROUP BY 1,2
ORDER BY 1,2

-- 7. Which time of the day do customers give most ratings?
SELECT part_of_day, count(rating) as No_of_ratings
FROM walmart_sales
GROUP BY 1
ORDER BY 2

-- 8. Which time of the day do customers give most ratings per branch?
SELECT branch,part_of_day, count(rating) as No_of_ratings
FROM walmart_sales
GROUP BY 1,2
ORDER BY 1,2

-- 9.  Which day fo the week has the best avg ratings?
SELECT day_name as day_of_week, AVG(rating) as Average_Rating
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC

-- 10. Which day of the week has the best average ratings per branch?
SELECT branch,day_name as day_of_week, AVG(rating) as Average_Rating
FROM walmart_sales
GROUP BY 1,2
ORDER BY 3 DESC

-- 11. Revenue And Profit Calculations
SELECT 