INSERT INTO brends
    (name)
VALUES 
    ('Darkside'),
    ('Brusko'),
    ('Alfakher'),
    ('Sherbet'),
    ('Tansh'),
    ('Husky'),
    ('TOYZ'),
    ('Musthave'),
    ('Spectrum'),
    ('Shoria'),
    ('Hooligan');

INSERT INTO tabaco 
    (name, brend_id, strenght)
VALUES 
    ('Kalegraipfruit', (SELECT id FROM brends WHERE name = 'Darkside'), 5),
    ('Supernova', (SELECT id FROM brends WHERE name = 'Darkside'), 5),
    ('Honey', (SELECT id FROM brends WHERE name = 'Darkside'), 5),
    ('Coldlichy', (SELECT id FROM brends WHERE name = 'Brusko'), 2),
    ('Blueberry', (SELECT id FROM brends WHERE name = 'Brusko'), 2),
    ('Rastberry', (SELECT id FROM brends WHERE name = 'Brusko'), 2),
    ('Doubleapple', (SELECT id FROM brends WHERE name = 'Alfakher'), 3),
    ('Energetic', (SELECT id FROM brends WHERE name = 'Alfakher'), 3),
    ('Pinapple', (SELECT id FROM brends WHERE name = 'Alfakher'), 3),
    ('Chery', (SELECT id FROM brends WHERE name = 'Sherbet'), 1),
    ('Graipe', (SELECT id FROM brends WHERE name = 'Sherbet'), 1),
    ('Orange', (SELECT id FROM brends WHERE name = 'Sherbet'), 1),
    ('Rum', (SELECT id FROM brends WHERE name = 'Tansh'), 10),
    ('Watermelon', (SELECT id FROM brends WHERE name = 'Tansh'), 10),
    ('Strawberry', (SELECT id FROM brends WHERE name = 'Tansh'), 10),
    ('Pinapple Rings', (SELECT id FROM brends WHERE name = 'Musthave'), 4),
    ('Red Bomb', (SELECT id FROM brends WHERE name = 'Musthave'), 4),
    ('Buble Gym', (SELECT id FROM brends WHERE name = 'Musthave'), 4),
    ('Caribean Rum', (SELECT id FROM brends WHERE name = 'Spectrum'), 6),
    ('Brazilian Tea', (SELECT id FROM brends WHERE name = 'Spectrum'), 6),
    ('Citrus Mix', (SELECT id FROM brends WHERE name = 'Spectrum'), 6),
    ('Helthy', (SELECT id FROM brends WHERE name = 'Hooligan'), 7),
    ('Basilic', (SELECT id FROM brends WHERE name = 'Hooligan'), 7),
    ('Maracuia', (SELECT id FROM brends WHERE name = 'Hooligan'), 7);

INSERT INTO goos 
    (name, brend_id, strenght)
VALUES 
    ('Forest Сocktail', (SELECT id FROM brends WHERE name = 'Brusko'), 5),
    ('Melone', (SELECT id FROM brends WHERE name = 'Brusko'), 5),
    ('Peach', (SELECT id FROM brends WHERE name = 'Brusko'), 5),
    ('Mint', (SELECT id FROM brends WHERE name = 'Husky'), 3),
    ('Ice Cream', (SELECT id FROM brends WHERE name = 'Husky'), 3),
    ('Kiwi', (SELECT id FROM brends WHERE name = 'Husky'), 3),
    ('Cucumber', (SELECT id FROM brends WHERE name = 'TOYZ'), 1),
    ('Mango', (SELECT id FROM brends WHERE name = 'TOYZ'), 1),
    ('Cocount', (SELECT id FROM brends WHERE name = 'TOYZ'), 1),
    ('Rising Star', (SELECT id FROM brends WHERE name = 'Shoria'), 8),
    ('Asian Lychee', (SELECT id FROM brends WHERE name = 'Shoria'), 8),
    ('Jungle Mix', (SELECT id FROM brends WHERE name = 'Shoria'), 8);

INSERT INTO autors 
    (name, contact, phone, email)
VALUES
    ('Света', NULL, '89854443207', 'sveta@mail.ru'), 
    ('Руслан', 'vk.com', '+79789371307', 'ruslan@mail.ru'), 
    ('Илья', 'vk.com', '89854443206', 'ilya@mail.ru'), 
    ('Радик', 'vk.com', '+79789902523', 'radik@mail.ru'), 
    ('Данис', 'vk.com', NULL, 'danis@mail.ru');

INSERT INTO mixes
    (name, strenght, autor_id)
VALUES
    ('Pizdec', 6, (SELECT id FROM autors WHERE name = 'Илья')),
    ('Light', 5, (SELECT id FROM autors WHERE name = 'Илья')),
    ('Hernya', 6, (SELECT id FROM autors WHERE name = 'Илья')),
    ('Altaisky Trip', 7, (SELECT id FROM autors WHERE name = 'Света')),
    ('Imbyr & Lemon', 8, (SELECT id FROM autors WHERE name = 'Света')),
    ('Marcepan', 9, (SELECT id FROM autors WHERE name = 'Света')),
    ('Low', 1, (SELECT id FROM autors WHERE name = 'Руслан')),
    ('Medium', 5, (SELECT id FROM autors WHERE name = 'Руслан')),
    ('Hard', 8, (SELECT id FROM autors WHERE name = 'Руслан')),
    ('Deth', 10, (SELECT id FROM autors WHERE name = 'Руслан'));

INSERT INTO ingridients
    (tabaco_id, goo_id, amount, mix_id)
VALUES
    ((SELECT id FROM tabaco WHERE name = 'Caribean Rum'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Pizdec')),
    ((SELECT id FROM tabaco WHERE name = 'Super Nova'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Pizdec')),
    ((SELECT id FROM tabaco WHERE name = 'Graipe'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Light')),
    ((SELECT id FROM tabaco WHERE name = 'Pinapple'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Light')),
    ((SELECT id FROM tabaco WHERE name = 'Super Nova'), NULL, 100, (SELECT id FROM mixes WHERE name = 'Hernya')),
    ((SELECT id FROM tabaco WHERE name = 'Kalegraipfruit'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Altaisky Trip')),
    ((SELECT id FROM tabaco WHERE name = 'Brazilian Tea'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Altaisky Trip')),
    ((SELECT id FROM tabaco WHERE name = 'Citrus Mix'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Imbyr & Lemon')),
    ((SELECT id FROM tabaco WHERE name = 'Helthy'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Imbyr & Lemon')),
    ((SELECT id FROM tabaco WHERE name = 'Honey'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Marcepan')),
    ((SELECT id FROM tabaco WHERE name = 'Chery'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Marcepan')),
    ((SELECT id FROM tabaco WHERE name = 'Rum'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Low')),
    ((SELECT id FROM tabaco WHERE name = 'Honey'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Low')),
    ((SELECT id FROM tabaco WHERE name = 'Energetic'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Medium')),
    ((SELECT id FROM tabaco WHERE name = 'Maracuia'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Medium')),
    ((SELECT id FROM tabaco WHERE name = 'Strawberry'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Hard')),
    ((SELECT id FROM tabaco WHERE name = 'Watermelon'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Hard')),
    ((SELECT id FROM tabaco WHERE name = 'Buble Gym'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Deth')),
    ((SELECT id FROM tabaco WHERE name = 'Red Bomb'), NULL, 50, (SELECT id FROM mixes WHERE name = 'Deth'));

UPDATE ingridients SET 
    tabaco_id = (SELECT id FROM tabaco WHERE name = 'Supernova')
WHERE tabaco_id IS NULL;

