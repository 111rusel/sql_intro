SELECT email FROM users;

SELECT name FROM users;

SELECT name, email FROM users;

SELECT * FROM products WHERE price > 1000;

SELECT * FROM users WHERE id = ANY (SELECT user_id FROM orders);

SELECT * FROM products WHERE id = ANY (SELECT product_id FROM order_lines);

SELECT * FROM categories WHERE id is NOT NULL;

