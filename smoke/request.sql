SELECT * FROM autors;

SELECT email, phone FROM autors WHERE phone IS NOT NULL;

SELECT name FROM tabaco WHERE brend_id = (SELECT id FROM brends WHERE name = 'Spectrum');

SELECT name FROM tabaco WHERE id = (SELECT tabaco_id FROM ingridients WHERE tabaco_id IS NOT NULL);

SELECT name FROM brends WHERE id = (SELECT brend_id FROM goos);

SELECT * FROM tabaco 
JOIN brends ON tabaco.brend_id = brends.id;

SELECT 
    tabaco.id, 
    tabaco.name,
    tabaco.strenght,
    brends.name
FROM tabaco 
JOIN brends ON tabaco.brend_id = brends.id;

SELECT 
    tabaco.id AS num, 
    tabaco.name AS taste,
    tabaco.strenght,
    brends.name AS brend
FROM tabaco 
JOIN brends ON tabaco.brend_id = brends.id;

SELECT tabaco.name FROM tabaco JOIN brends ON tabaco.brend_id = brends.id WHERE brends.name = 'Spectrum';

SELECT autors.name FROM autors JOIN mixes ON mixes.autor_id = autors.id;

SELECT brends.name FROM brends JOIN goos ON goos.brend_id = brends.id;

SELECT autors.name FROM autors 
JOIN mixes ON mixes.autor_id = autors.id 
JOIN ingridients ON ingridients.mix_id = mixes.id
JOIN tabaco ON ingridients.tabaco_id = tabaco.id
JOIN brends ON tabaco.brend_id = brends.id
WHERE brends.name = 'Spectrum'

SELECT brends.name FROM brends
JOIN tabaco ON tabaco.brend_id = brends.id
JOIN goos ON goos.brend_id = brends.id;

SELECT autors.name FROM autors
JOIN mixes ON mixes.autor_id = autors.id;

SELECT brends.name FROM brends
JOIN goos ON goos.brend_id = brends.id;

SELECT tabaco.name FROM tabaco
JOIN brends ON tabaco.brend_id = brends.id WHERE name = 'Tansh';