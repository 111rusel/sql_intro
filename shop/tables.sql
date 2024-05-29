/*
users
products
orders
carts
categories
payments
*/
BEGIN;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL, 
    adress VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    parent_id INT REFERENCES categories (id)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    category_id INT REFERENCES categories (id) NOT NULL,
    price NUMERIC(11, 2) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    user_id INT REFERENCES users (id) NOT NULL,
    sum NUMERIC(11, 2) NOT NULL
);

CREATE TABLE order_lines (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products (id) NOT NULL,
    sum NUMERIC(11, 2) NOT NULL,
    amount INT NOT NULL,
    order_id INT REFERENCES orders (id) NOT NULL
);

CREATE TABLE carts (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users (id) NOT NULL,
    sum NUMERIC(11, 2) NOT NULL
);

CREATE TABLE carts_lines (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products (id) NOT NULL,
    sum NUMERIC(11, 2) NOT NULL,
    amount INT NOT NULL,
    cart_id INT REFERENCES carts (id) NOT NULL
);

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    order_id INT REFERENCES orders (id) NOT NULL,
    sum NUMERIC (11, 2) NOT NULL
);
COMMIT;