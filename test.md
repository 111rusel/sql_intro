## git
- git clone ссылка
- git checkout -b name
- git checkot название ветки
- git add .
- git commit -m "comment"
- git push
- git pull
- git checkout master
  git merge test 

## docker
- docker-compose up -d
- docker run имя контейнера 
- docker-compose stop
- docker stop
- docker ps -- запустить перечень контейнеров 

## SQL
- CREATE TABLE name (
    id SERIAL PRIMERY KEY,
    colonka INT NOT NULL,
    xyenka VARCHAR 
)
- INT
- NOT NULL // IS NOT NULL(в условии)
- VARCHAR
- user_id INT REFERNCES users(id)
- NUMERIC (11, 2)
- DROP TABLE nametable(имя таблицы) 
- INSERT INTO autors (name, b, a) VALUES ('', 1, truse), ('', 2, false);
- UPDATE users SET name = 'lox' WHERE id = 1
- ALTER TABLE users ADD COLUMN age INT 
- SELECT * FROM autors 
- SELECT autors.name FROM autors
- SELECT users.name AS username FROM users
- SELECT * FROM autors WHERE autors.id = 1
- SELECT * FROM autors 
  GROUP BY name
- SELECT * FROM tabaco 
  JOIN brends ON tabaco.brend_id = brends.id
- SELECT * FROM users
  JOIN events ON true 
- SELECT users.name, COUNT(*) FROM users JOIN orders ON orders.user_id = users.id GROUP BY users.name
