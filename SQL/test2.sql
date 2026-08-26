select * from products;

-- q1. Display the name and price of the cheapest product in the entire table.

select name, price from products order by price limit 1;

-- better

select name, price from products  where price = (select min(price) from products);

-- q2. Find the average price of products that belong to the 'Home & Kitchen' or 'Fitness' category. 

select avg(price) from products where category in ( 'Home & Kitchen', 'Electronics');

select round(avg(price),2) from products where category in ( 'Home & Kitchen', 'Electronics');

--q3. Show product names and stock quantity where the product is available, stock is more than 50, and price is not equal to ₹19.99.

select name, stock_quantity from products where is_available = true and stock_quantity > 50 and price != 19.99;

--q4. Find the most expensive product in each category (name and price).

select max(price) as max_price, name, category from products group by category;


-- q5. Show all unique categories in uppercase, sorted in descending order.

select distinct upper(category) as upper_category from products order by upper_category desc;




















