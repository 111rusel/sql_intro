SELECT * FROM autors;

SELECT * FROM autors WHERE contact IS NOT NULL;

SELECT * FROM autors WHERE autors.id = any (SELECT autor_id FROM mixes);

SELECT * FROM brends WHERE brends.id = any (SELECT brend_id FROM tabaco WHERE id = any (SELECT tabaco_id FROM ingridients));

SELECT * FROM brends 
JOIN tabaco ON brends.id = tabaco.brend_id;

SELECT brends.name, tabaco.name FROM brends 
JOIN tabaco ON brends.id = tabaco.brend_id;

SELECT 
    brends.name AS brend_name,  
    tabaco.name AS tabaco_name
FROM brends 
JOIN tabaco ON brends.id = tabaco.brend_id;

SELECT 
    autors.name
FROM autors
JOIN mixes ON autors.id = mixes.autor_id; 

SELECT
    mixes.strenght
FROM mixes 
JOIN autors ON autors.id = mixes.autor_id
WHERE autors.name = 'Света';

SELECT
    goos.name
FROM goos
JOIN brends ON brends.id = goos.brend_id
WHERE brends.name = 'Brusko';

SELECT
    autors.name
FROM autors
JOIN mixes ON autors.id = mixes.autor_id
JOIN ingridients ON ingridients.mix_id = mixes.id
JOIN tabaco ON ingridients.tabaco_id = tabaco.id
JOIN brends ON tabaco.brend_id = brends.id
WHERE brends.name = 'Spectrum';

SELECT * FROM users
JOIN brends ON true;

SELECT * FROM brends
LEFT JOIN goos  ON goos.brend_id = brends.id;

SELECT * FROM brends
LEFT JOIN tabaco ON tabaco.brend_id = brends.id

SELECT * FROM autors
LEFT JOIN mixes ON mixes.autor_id = autors.id where mixes.id is not NULL

SELECT * FROM autors
LEFT JOIN mixes ON mixes.autor_id = autors.id where mixes.id IS NULL

SELECT * FROM autors 
RIGHT JOIN brends ON autors.id = brends.id

SELECT brends.name  FROM brends
JOIN tabaco  ON tabaco.brend_id = brends.id
GROUP BY brends.name;

SELECT 
    brends.name, 
    COUNT (*)  
FROM brends
JOIN tabaco  ON tabaco.brend_id = brends.id
GROUP BY brends.name;

SELECT
    autors.name,
    COUNT (*)
FROM autors 
JOIN mixes ON mixes.autor_id = autors.id
GROUP BY autors.name;

SELECT name FROM autors
ORDER BY name ASC;

SELECT name FROM autors
ORDER BY name DESC;

SELECT tabaco.name, brends.name, tabaco.id FROM tabaco
JOIN brends ON tabaco.brend_id = brends.id
ORDER BY brends.name, tabaco.id;

DELETE FROM autors WHERE name = 'Данис';

SELECT * FROM autors ORDER BY id LIMIT 2;

SELECT * FROM autors ORDER BY id LIMIT 2 OFFSET 1; /* LIMIT - коллво строк OFFSET - начиная с какой */