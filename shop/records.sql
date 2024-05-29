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