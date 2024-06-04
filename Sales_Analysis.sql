-- ------------------------
-- Sales Analysis
-- ------------------------

SELECT * FROM walmart_sales limit 1;

-- 1. Number of sales made in each time of the day per weekday
SELECT Part_of_day,COUNT(*) as Total_Sales	   
FROM walmart_sales
WHERE Day_name <> 'Sunday'
GROUP BY 1

-- 2. Which of the customer types brings the most revenue?
SELECT customer_type, ROUND(SUM(total)::numeric,2) as Revenue_By_CustomerType --SUM(total)::numeric => typecasted to numeric
FROM walmart_sales
GROUP BY 1

-- 3. Which city has the largest tax percent/ VAT (**Value Added Tax**)?
SELECT city, avg(value_added_tax) as Value_added_tax
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- 4. Which customer type pays the most in VAT?
SELECT customer_type, avg(value_added_tax) as Value_added_tax
FROM walmart_sales
GROUP BY 1
ORDER BY 2 DESC;
--LIMIT 1; --When used gives only the top most record ie., customer_type paying highes


