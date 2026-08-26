create database flipkart_db;

create table products(
product_id serial primary key,
name varchar(100) not null,
sku_code char(8) unique not null check (char_length(sku_code)=8),
price numeric(10,2) default 0 check (price>=0),
stock_Quantity int default 0 check (stock_Quantity>=0),
is_available boolean default true,
category text not null,
added_on date default now(),
last_update date default now()
);

INSERT INTO products (name, sku_code, price, stock_Quantity, is_available, category) VALUES
('Wireless Noise-Canceling Headphones', 'WNC-1001', 149.99, 45, true, 'Electronics'),
('Ergonomic Leather Office Chair', 'EGC-2042', 229.50, 12, true, 'Furniture'),
('Stainless Steel Water Bottle (1L)', 'SSB-3089', 19.99, 120, true, 'Home & Kitchen'),
('Mechanical Gaming Keyboard', 'MGK-4011', 89.95, 0, false, 'Electronics'),
('Organic Whole Bean Coffee (1lb)', 'OBC-5055', 14.50, 85, true, 'Groceries'),
('Trail Running Shoes - Size 10', 'TRS-6023', 119.00, 28, true, 'Apparel'),
('4K Ultra HD Smart Monitor 27"', 'UHD-7090', 329.99, 8, true, 'Electronics'),
('Non-Stick Cast Iron Skillet', 'CIS-8012', 34.99, 60, true, 'Home & Kitchen'),
('Waterproof Camping Tent (4-Person)', 'WCT-9034', 159.95, 15, true, 'Outdoors'),
('Bluetooth Portable Speaker', 'BPS-0078', 49.99, 0, false, 'Electronics');

select * from products;

-- 1.
select name, price from products;

-- 2.
select * from products where (Category = 'Electronics');

-- 3.
select category from products group by category;

-- 4.
select category, count(*) from products
group by category 
having count(*) > 1;

-- 5.
select * from products order by price; --ASC

select * from products order by price DESC;

-- 6.
SELECT * FROM PRODUCTS LIMIT 3;

-- 7.
select name as item_name, price as item_price from products;

-- 8.
select distinct category from products;















