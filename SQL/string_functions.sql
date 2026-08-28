select * from products;
select lower(name) from products;
select upper(name) from products;


select length(name) from products;

-- substring(text, location, length)

select substring('Brother in arms',1,7);
select substring('Brother in arms',9,2);
select substring('Brother in arms',12,15);

select name, lower(substring(sku_code,1,3)) from products;

-- left(), right()

select left('Brother Arms', 7);
select right('Brother Arms', 4);

select name,(left(sku_code,3)) from products


-- concat(), concat_ws()

select concat(name, ' ', sku_code) as name_with_sku_code from products;
select concat(name, ' ', sku_code, ' ', lower(category)) as name_with_sku_code from products;
select concat_ws(' : ', name, sku_code, lower(category)) as name_with_sku_code from products;


-- trim(), replace()

select trim('   brothers   ');

select name, sku_code from products;
select name, left(sku_code,3) from products;
select name, replace(sku_code,left(sku_code,3), 'GG') from products;









