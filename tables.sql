CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL
);

CREATE TABLE rooms (
    id SERIAL PRIMARY KEY,
    number INT  
);

CREATE TABLE phones (
    id SERIAL PRIMARY KEY,
    number VARCHAR NOT NULL
);

CREATE TABLE roomes_phones (
    room_id INT REFERENCES rooms (id) NOT NULL,
    phone_id INT REFERENCES phones (id) NOT NULL
)

CREATE TABLE users_rooms (
    room_id INT REFERENCES rooms (id) NOT NULL,
    user_id INT REFERENCES users (id) NOT NULL
);