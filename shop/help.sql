DROP TABLE users;

BEGIN; 
...
COMMIT;

UPDATE order_lines SET 
    sum  = (amount * (SELECT price FROM products WHERE id = order_lines.product_id));

UPDATE orders SET
    sum = (SELECT sum FROM order_lines WHERE order_id = orders.id);

UPDATE users SET 
    email = 'petrenko@mail.ru' WHERE name = 'Илья';

UPDATE users SET
    name = 'Радик Булатович' WHERE name = 'Радик';

UPDATE products SET
    price = price * 1.05;

UPDATE products SET
    price = price * 1.20 WHERE id = ANY (SELECT product_id FROM order_lines);