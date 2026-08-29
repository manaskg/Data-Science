select * from products;

-- WHY DO WE USE CASE?
-- To create custom columns on-the-fly
-- To categorize data based on certain logic
-- To replace values conditionally
-- To handle nulls or missing values gracefully
-- To simplify complex logic inside SELECT queries


select name, price,
CASE when (price > 100) then 'Expensive'
	 when price between 50 and 100 then 'Moderate'
	 else 'Cheap'
END as price_range from products;

-- so here we are actually selecting 3 column
-- 1. name
-- 2. price
-- 3. an on the go column: price_range =>
-- the syntax starts with CASE and ends with END.

-- But note this will just create a virtual data but you can also alter the real data.

alter table products 
add column price_range text;

update products
set price_range = 
CASE
	when (price > 100) then 'Expensive'
	when price between 50 and 100 then 'Moderate'
	else 'Cheap'
END;


-- q1. question inside is available column you have boolean true and false show case a new column to with in_stock and out of stock.

select name, is_available,
case 
	when (is_available = true) then 'in stock'
	else 'out of stock'
end 
as availabilty from products;

select name, stock_quantity,
case
	when (stock_quantity > 100) then 'high stock'
	when stock_quantity between 30 and 100 then 'medium stock'
	when (stock_quantity = 0) then 'not available'
	else 'low stock'
end
as stock_status from products;











