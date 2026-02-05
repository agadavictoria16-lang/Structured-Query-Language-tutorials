SELECT * FROM Restaurant_Dataset

SELECT * FROM restaurant_operations_dataset

SELECT * FROM Restaurant_Dataset FULL OUTER JOIN restaurant_operations_dataset 
ON Restaurant_Dataset.restaurant_id= restaurant_operations_dataset.restaurant_id
 
SELECT * FROM Restaurant_Dataset RIGHT OUTER JOIN restaurant_operations_dataset 
ON Restaurant_Dataset.restaurant_id= restaurant_operations_dataset.restaurant_id

SELECT location, cuisine_type, menu_item, price FROM Restaurant_Dataset
UNION
SELECT location,  cuisine_type, menu_item, price FROM restaurant_operations_dataset

SELECT *, 
CASE
	WHEN price > 30 THEN 'Expensive'
	ELSE 'Affordable'
END
AS Expenses
FROM Restaurant_Dataset

SELECT seating_capacity,
CASE
	WHEN seating_capacity = 20 THEN 'Okay'
	WHEN seating_capacity > 20 THEN 'Over_crowded'
	WHEN seating_capacity < 20 THEN 'Crowded'
END
AS Restaurant_seating_capacity
FROM Restaurant_Dataset

SELECT price,
CASE 
	WHEN price BETWEEN 40 AND 60 THEN 'Quite_Expensive'
	WHEN price < 20 THEN 'Affordable'
	ELSE 'Okay'
END
AS Price_Grade
FROM Restaurant_Dataset

SELECT location, COUNT (menu_item)
AS Menu_Item_by_location
FROM Restaurant_Dataset
GROUP BY location
HAVING COUNT (menu_item) > 25

SELECT menu_item, COUNT (menu_item)
FROM Restaurant_Dataset
GROUP BY menu_item
HAVING COUNT (menu_item) > 25

UPDATE Restaurant_Dataset
SET menu_item = 'Yam Porridge'
WHERE restaurant_id = 6

UPDATE Restaurant_Dataset
SET cuisine_type = 'Fast food'
WHERE location = 'Kano' AND cuisine_type = 'Intercontinental'

DELETE Restaurant_Dataset
WHERE restaurant_id = 10

DELETE Restaurant_Dataset
WHERE delivery_available = 0

SELECT restaurant_name Rname
FROM Restaurant_Dataset

SELECT menu_item Men, location loc, cuisine_type cuy
FROM  Restaurant_Dataset

SELECT cuisine_type+ ' ' + menu_item AS 'Food Type'
FROM Restaurant_Dataset

SELECT Rest.cuisine_type, Rest.menu_item, OP_Rest.price FROM  Restaurant_Dataset AS Rest 
INNER JOIN restaurant_operations_dataset AS OP_Rest ON Rest.restaurant_id = OP_Rest.restaurant_id

/*To create and insert calculated values into a temp table according to preference */
CREATE TABLE #Temp_I3 ( menu_item VARCHAR (50), cuisine_type VARCHAR (50), seating_capacity INT )
INSERT INTO #Temp_I3
SELECT menu_item, COUNT (cuisine_type), SUM (seating_capacity)
FROM Restaurant_Dataset
GROUP BY menu_item

SELECT * FROM #Temp_I3

SELECT * FROM #Temp_I2










