BEGIN;
INSERT INTO users 
    (name, email, adress)
VALUES 
    ('Руслан', 'ruslan@mail.ru', 'г. Севастополь'),
    ('Радик', 'radik@mail.ru', 'г. Севастополь'),
    ('Света', 'sveta@mail.ru', 'г. Москва'),
    ('Илья', 'ilya@mail.ru', 'г. Москва'),
    ('Данис', 'danislox@mail.ru', 'г. Мелеуз');

INSERT INTO categories
    (name, parent_id)
VALUES
    ('Electronics', NULL),
    ('Phones', (SELECT id FROM categories WHERE name = 'Electronics')),
    ('Headphones', (SELECT id FROM categories WHERE name = 'Electronics')),
    ('Microphones', (SELECT id FROM categories WHERE name = 'Electronics')),
    ('Automobile', NULL);
COMMIT;

INSERT INTO products
    (name, category_id, price)
VALUES
    ('Паяльник', (SELECT id FROM categories WHERE name = 'Electronics'), 5000),
    ('Светильник', (SELECT id FROM categories WHERE name = 'Electronics'), 4000),
    ('Iphone 18+MAX', (SELECT id FROM categories WHERE name = 'Phones'), 999999.99),
    ('Google Pixel 6', (SELECT id FROM categories WHERE name = 'Phones'), 39000),
    ('Sony XBass', (SELECT id FROM categories WHERE name = 'Headphones'), 4000),
    ('Marshals', (SELECT id FROM categories WHERE name = 'Headphones'), 4000),
    ('DEXP', (SELECT id FROM categories WHERE name = 'Microphones'), 900),
    ('Oklick', (SELECT id FROM categories WHERE name = 'Microphones'), 1100),
    ('SUBARU IMPREZA', (SELECT id FROM categories WHERE name = 'Automobile'), 1000000000),
    ('LADA 2113', (SELECT id FROM categories WHERE name = 'Automobile'), 1000000);

INSERT INTO orders
    (created_at, user_id, sum)
VALUES
    ('2024-05-30 23:05:55.524 +0300', (SELECT id FROM users WHERE name = 'Света'), 900),
    ('2024-05-30 23:05:55.524 +0300', (SELECT id FROM users WHERE name = 'Руслан'), 500),
    ('2024-05-30 23:05:55.524 +0300', (SELECT id FROM users WHERE name = 'Илья'), 1000);

INSERT INT order_lines
    (product_id, sum, amount, order_id)
VALUES
    ((SELECT id FROM products WHERE name = 'DEXP'), 900, 2, (SELECT id FROM orders WHERE sum  = 900)),
    ((SELECT id FROM products WHERE name = 'Sony XBass'), 4000, 1, (SELECT id FROM orders WHERE sum = 1000)),
    ((SELECT id FROM products WHERE name = 'Iphone 18+MAX'), 999999.99, 4, (SELECT id FROM orders WHERE sum = 500));

