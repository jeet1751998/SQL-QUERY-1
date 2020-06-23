-- Name :- Jeet patel   id:- 8554313 --

-- query 1 --
SELECT first_name,billing_address_id,last_name,customer_id
FROM customers
ORDER BY last_name;


-- query 2 --

SELECT concat(last_name,' ',first_name) AS join_name FROM customers
WHERE last_name BETWEEN 'P' AND 'Z'
order by first_name desc;

-- query 3 --

SELECT product_name,list_price
FROM products
where list_price > 400 AND list_price < 1000;

-- query 4 --

SELECT product_name,list_price,discount_percent,ROUND((list_price * discount_percent)/100,3) AS discount_amount from products LIMIT 7;

-- query 5 --

SELECT item_id,item_price, (item_price * quantity) AS price_total from order_items WHERE item_price > 100;

-- query 6 --

SELECT order_id, ship_date
from orders
WHERE ship_date IS NULL;

-- QUERY 7 --

SELECT NOW() AS today_unformatted, DATE_FORMAT(NOW(),'%e-%b-%Y') AS today_formatted;

-- query 8 --

SELECT 100 as PRICE,0.07 AS tax_rate,(100 * 0.07) as tax_amount;
