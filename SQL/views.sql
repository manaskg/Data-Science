-- in flipkart_db

select * from products;

-- create a view: saves the underlying query. reruns the query every time when we want to view it.

create view fitness_items as 
select product_id, name , price, stock_quantity 
from products
where category = 'Electronics';

select * from fitness_items;

-- create view for low stock items

create view low_stock_items as
select * from products 
where stock_quantity < 50;

select * from low_stock_items;

-- we can also replace and drop views