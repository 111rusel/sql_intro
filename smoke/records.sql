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

