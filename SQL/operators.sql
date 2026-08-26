select * from products;

select * from products where category = 'Home & Kitchen';

select * from products where price > 100;

select * from products where price > 100 and price < 200;

select * from products where price between 100 and 200;

-- Range (Between) operator
select * from products where category = 'Electronics' or category = 'Furniture'  or category = 'Home & Kitchen';

-- Set(in) operator
select * from products where category in ('Electronics','Furniture','Home & Kitchen');

















