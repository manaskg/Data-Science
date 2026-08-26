select * from products;

select * from products where category = 'Home & Kitchen';
select * from products where category != 'Home & Kitchen';

select * from products where price > 100;

select * from products where price > 100 and price < 200;

select * from products where price between 100 and 200;

-- Range (Between) operator
select * from products where category = 'Electronics' or category = 'Furniture'  or category = 'Home & Kitchen';

-- Set(in) operator
select * from products where category in ('Electronics','Furniture','Home & Kitchen');

-- like clause
select * from products where sku_code like '%2';
select * from products where sku_code like 'W%';
select * from products where sku_code like '%B';
select * from products where sku_code like '%B%'; -- B can also come front here

-- Q. find those sku_code where third letter is C

select * from products where sku_code like '__C%';














