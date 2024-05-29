CREATE TABLE autors (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    pseudoName VARCHAR
);

CREATE TABLE generes (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE bookcase (
    id SERIAL PRIMARY KEY,
    number INT NOT NULL
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    autor_id INT REFERENCES autors (id),
    gener_id INT REFERENCES generes (id),
    bookcase_id INT REFERENCES bookcase (id)
);

CREATE TABLE library_users (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    age INT NOT NULL
);

CREATE TABLE history (
    id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books (id),
    user_id INT REFERENCES users (id),
    picked_at TIMESTAMP WITH TIMEZONE DEFAULT NOW(),
    returned_at TIMESTAMP WITH TIMEZONE DEFAULT NULL
);

INSERT INTO autors (name, pseudoName) VALUES ('Лев Толстой', 'Лёва');

INSERT INTO generes (name) VALUES ('Антиутопия'), ('18+');

INSERT INTO bookcase (number) VALUES (1), (2), (3);

INSERT INTO books 
    (name, autor_id, gener_id, bookcase_id)
VALUES 
    ('Война и мир', (SELECT id FROM autors WHERE name = 'Лев Толстой'), (SELECT id FROM generes WHERE name = 'Антиутопия'), (SELECT id FROM bookcase WHERE number = 1)),
    ('Супер книга', (SELECT id FROM autors WHERE name = 'Лев Толстой'), (SELECT id FROM generes WHERE name = '18+'), (SELECT id FROM bookcase WHERE number = 3));

INSERT INTO users (username) VALUES ('Руслан'), ('Света');

INSERT INTO history 
    (book_id, user_id)
VALUES
    ((SELECT id FROM books WHERE name = 'Война и мир'), (SELECT id FROM users WHERE username = 'Руслан'));
