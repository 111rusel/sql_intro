INSERT INTO users (username) VALUES ('rusik'), ('sveta'), ('ilya'), ('danis'), ('raZmik');

INSERT INTO rooms (number) VALUES (1), (2), (3);

INSERT INTO phones (number) VALUES ('101'), ('102'), ('103');

INSERT INTO roomes_phones (room_id, phone_id) VALUES (1,3), (2,2), (3,1);

INSERT INTO users_rooms (room_id, user_id) VALUES (1, 2), (1, 3), (2, 1), (3, 5), (3, 4);