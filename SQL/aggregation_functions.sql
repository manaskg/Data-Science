select * from products;

select count(product_id), count(sku_code) from products;

select count(product_id) from products where is_available = true;

select sum(price) from products where category = 'Electronics' or category = 'Home & Kitchen';

select avg(price) from products;
select round(avg(price),2) from products;


select min(price) from products;
select max(price) from products;
