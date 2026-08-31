create table products (
product_id serial primary key,
product_name varchar(100),
category text,
price numeric(10,2),
stock_quantity int,
is_available boolean,
added_on date
);

create table orders (
order_id serial primary key,
product_id int,
quantity int,
order_date date,
customer_name varchar(50),
payment_method varchar(50),
constraint fk_product
foreign key (product_id)
references products(product_id)
on delete cascade
);

select * from products;
select * from orders;

select * from products p left join orders o on p.product_id = o.product_id;

-- Q1. Show each order along with the product name and price.

select o.order_id, p.product_name, p.price, o.customer_name 
from orders o inner join products p 
on  o.product_id = p.product_id;

-- Q2. Show all products even if they were never ordered.

select o.order_id, p.product_name, p.price, o.customer_name 
from orders o right join products p 
on  o.product_id = p.product_id;

-- Q3.Show orders for only ‘Electronics’ category.

select p.product_name, o.order_id 
from products p inner join orders o 
on p.product_id = o.product_id 
where p.category = 'Electronics';

-- Q4.List all orders sorted by product price (high to low)

select p.product_name, p.price, o.order_id 
from products p inner join orders o
on p.product_id = o.product_id 
order by p.price desc;

-- Q5.Show number of orders placed for each product.

select count(*), p.product_name
from products p inner join orders o
on p.product_id = o.product_id 
group by p.product_name;


select p.product_name, count(o.order_id) as total_orders
from products p left join orders o
on p.product_id = o.product_id 
group by p.product_name;

-- Q6. Show total revenue earned per product.*****

select p.product_name, sum(p.price * o.quantity) as revenue
from products p left join orders o
on p.product_id = o.product_id 
group by p.product_name;

-- Q7.Show products where total order revenue > ₹2000.

select p.product_name, sum(p.price * o.quantity) as revenue
from products p left join orders o
on p.product_id = o.product_id 
group by p.product_name having sum(p.price * o.quantity) > 2000;

-- Q8.Show unique customers who ordered ‘Fitness’ products.

select distinct o.customer_name from orders o join products p on o.product_id = p.product_id where (p.category = 'Fitness');

-- When they are giving To find Something Exclusively from Products Then we'll Join products to orders.
-- on the other hand when they are giving something to find from order table Then we Join orders to products.






