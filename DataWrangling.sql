select * from Walmart_Sales;

-- 1. Adding New Column to understand what part of the day sale occured i.e., Morning/Afternoon/Evening

ALTER TABLE Walmart_Sales add column Part_Of_Day character Varying(30); --Adding New Column

UPDATE Walmart_Sales -- Updating Column Values
SET Part_Of_Day = (
		CASE WHEN time BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning'
			 WHEN time BETWEEN '12:00:01' AND '16:00:00' THEN 'Afternoon'
			 ELSE 'Evening'
		END );
		
-- 2. Add another column for day_name to identify day of the week
ALTER TABLE Walmart_Sales ADD COLUMN day_name character varying(30);

UPDATE Walmart_Sales
SET day_name = TO_CHAR(date,'Day');

SELECT * FROM Walmart_Sales
Limit 3;

-- 3. Adding Month Name

ALTER TABLE Walmart_Sales ADD COLUMN month_name character varying(30);

UPDATE Walmart_Sales
SET month_name = TO_CHAR(date,'Month');

SELECT * FROM Walmart_Sales
Limit 3;



