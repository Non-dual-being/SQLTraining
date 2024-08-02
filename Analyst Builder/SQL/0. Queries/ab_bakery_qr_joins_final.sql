SELECT * 
FROM ordered_items;

SELECT * 
FROM products;

SELECT DISTINCT p.product_name, oi.unit_price, p.sale_price, p.units_in_stock,
(p.sale_price - oi.unit_price) AS profit,
((p.sale_price - oi.unit_price)*p.units_in_stock) AS potential_profit
FROM ordered_items oi
JOIN products p
	USING(product_id)
ORDER BY profit DESC;

use bakery;