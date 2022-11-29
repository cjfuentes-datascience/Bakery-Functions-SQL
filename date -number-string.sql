-- Select ten rows from the bakeries table.
SELECT *
FROM bakeries
LIMIT 10;

-- Using the datetime function, select the date and time of all deliveries in the baked_goods table using the column delivery_time.
SELECT DATETIME(delivery_time)
FROM baked_goods;

-- Find the number of baked goods by date of delivery.
SELECT DATE(delivery_time), 
  COUNT(*) AS count_baked_goods
FROM baked_goods
GROUP BY 1;

-- Create a query returning all the packaging times for the goods in the baked_goods table
SELECT DATETIME(delivery_time, '+5 hours', '20 minutes', '2 day') AS package_time
FROM baked_goods;

-- Find the bakery’s distance from the market rounded to two decimal places.
SELECT ROUND(distance, 2) AS distance_from_market
FROM bakeries;

-- We also have information about cook time designated as cook_time and cool down time designated as cool_down_time in the baked_goods table. Find the greatest time value for each item in the table.
SELECT id, 
  MAX(cook_time, cool_down_time) AS cool_down_time
FROM baked_goods
GROUP BY 1;

--Find the least time value for each item in the table.
SELECT id,
  MIN(cook_time, cool_down_time) AS cool_down_time
FROM baked_goods
GROUP BY 1;

-- Combine the first_name and last_name columns from the bakeries table as the full_name to identify the owners of the bakeries.
SELECT first_name || ' ' || last_name AS full_name
FROM bakeries;

-- Any time enriched_flour appears in the ingredients list, we’d like to replace it with just flour.
SELECT REPLACE(ingredients, 'enriched_', '') AS item_ingredients
FROM baked_goods;
