select * from products;


create procedure add_products(
 p_name varchar,
 p_sku char(8),
 p_price numeric,
 p_qty int,
 p_category text
)
language plpgsql
as $$
begin
	insert into products(name, sku_code, price, stock_quantity, category)
	values (p_name, p_sku, p_price, p_qty, p_category);
	raise notice 'Product added successfully';
end;
$$;


-- calling the procedure

call add_products ('bottle', 'BOL-1234', 10.00, 45, 'Essentials');















