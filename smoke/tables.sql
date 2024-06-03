/*
brends
tabaco
goos
autors
mixes
ingridients
*/
BEGIN;
CREATE TABLE brends (
    id SERIAL PRIMARY KEY, 
    name VARCHAR NOT NULL
);

CREATE TABLE tabaco (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    brend_id INT REFERENCES  brends(id) NOT NULL,
    strenght INT NOT NULL
);

CREATE TABLE goos (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    brend_id INT REFERENCES  brends(id) NOT NULL,
    strenght INT NOT NULL
);

CREATE TABLE autors (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    contact VARCHAR,
    phone VARCHAR,
    email VARCHAR
);

CREATE TABLE mixes (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    strenght INT NOT NULL,
    autor_id INT REFERENCES autors(id) NOT NULL
);

CREATE TABLE ingridients (
    id SERIAL PRIMARY KEY,
    tabaco_id INT REFERENCES tabaco(id),
    goo_id INT REFERENCES goos(id),
    amount INT NOT NULL
);
COMMIT;