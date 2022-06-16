# 1. 
SELECT * FROM customers;

# 2. 
SELECT DISTINCT country FROM customers;

# 3. 
SELECT * FROM customers WHERE id REGEXP '^BL';

# 4. 
SELECT * FROM orders LIMIT 100;

# 5. 
SELECT * FROM customers WHERE postal_code = '1010' 
OR postal_code = '3012'
OR postal_code = '12209'
OR postal_code = '05023'; 

# 6. 
SELECT * FROM orders WHERE ship_region <> NULL;

# 7.
SELECT * FROM customers ORDER BY country, city; 

# 8.
INSERT INTO customers (id, company, last_name, first_name, email_address, job_title, mobile_phone, address, city, state_province, zip_postal_code)
VALUES (44, "unknown", "Fierek", "Tim", "tfierek@gmail.com", "boss-man", "(734)320-3364", "Eagle road", "Detroit", "MI", "48189");

# 9.
UPDATE orders SET ship_Region = "EuroZone" WHERE ship_country = "France";

# 10. 
DELETE FROM orders WHERE quantity = "1";

# 11. 
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details;

# 12. 
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM order_details GROUP BY order_id;

# 13. 
SELECT customer_id FROM orders WHERE id = 10290;

# 14.
SELECT * FROM orders INNER JOIN customers ON orders.customer_id = customers.id;
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id = customers.id;
SELECT * FROM orders RIGHT JOIN customers ON orders.customer_id = customers.id;

# 15. 
SELECT ship_city, ship_country FROM orders INNER JOIN employees ON orders.employee_id = employees.id AND employees.country = 'London';

# 16. 
SELECT orders.ship_name FROM ((orders
INNER JOIN order_details ON orders.id = order_details.order_id)
INNER JOIN products ON order_details.product_id = products.id AND products.discontinued = 1);

# 17. 
SELECT first_name FROM employees WHERE reports_to = NULL;

# 18. 
SELECT first_name FROM employees 
WHERE reports_to = (SELECT employee_id from employees WHERE first_name = 'Andrew');

