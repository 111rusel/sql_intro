SELECT * FROM users;

SELECT username FROM users; 

SELECT username FROM users WHERE id > 3;

SELECT users.username, rooms.number FROM users 
JOIN users_rooms ON users.id = users_rooms.user_id
JOIN rooms ON users_rooms.room_id = rooms.id;

SELECT users.username FROM users 
JOIN users_rooms ON users.id = users_rooms.user_id
JOIN roomes_phones ON users_rooms.room_id = roomes_phones.room_id
JOIN phones ON roomes_phones.phone_id = phones.id
WHERE phones.number = '101';