-- Insertar usuarios
INSERT INTO
    Users (name, password)
VALUES ('Manolito', 'password1'),
    ('Pepe', 'password2'),
    ('Isabel', 'password3'),
    ('Pedro', 'password4');

-- Insertar temáticas
INSERT INTO
    Themes (name)
VALUES ('humor negro'),
    ('humor amarillo'),
    ('chistes verdes');

-- Obtener los IDs de las temáticas insertadas
SELECT id FROM Themes;

-- Insertar chistes para cada usuario y temática
-- Chistes de Manolito
INSERT INTO
    Jokes (title, body, author_id)
VALUES (
        'Chiste 1 de Manolito',
        'Cuerpo del chiste 1 de Manolito',
        1
    ),
    (
        'Chiste 2 de Manolito',
        'Cuerpo del chiste 2 de Manolito',
        1
    ),
    (
        'Chiste 3 de Manolito',
        'Cuerpo del chiste 3 de Manolito',
        1
    );

-- Asociar chistes de Manolito con las temáticas correspondientes (humor negro, humor amarillo, chistes verdes)
INSERT INTO
    Jokes_Themes (joke_id, theme_id)
VALUES (1, 1), -- Chiste 1 de Manolito -> humor negro
    (2, 2), -- Chiste 2 de Manolito -> humor amarillo
    (3, 3);
-- Chiste 3 de Manolito -> chistes verdes
-- Chistes de Pepe
INSERT INTO
    Jokes (title, body, author_id)
VALUES (
        'Chiste 1 de Pepe',
        'Cuerpo del chiste 1 de Pepe',
        2
    ),
    (
        'Chiste 2 de Pepe',
        'Cuerpo del chiste 2 de Pepe',
        2
    ),
    (
        'Chiste 3 de Pepe',
        'Cuerpo del chiste 3 de Pepe',
        2
    );

-- Asociar chistes de Pepe con las temáticas correspondientes
INSERT INTO
    Jokes_Themes (joke_id, theme_id)
VALUES (4, 2), -- Chiste 1 de Pepe -> humor amarillo
    (5, 3), -- Chiste 2 de Pepe -> chistes verdes
    (6, 1);
-- Chiste 3 de Pepe -> humor negro
-- Chistes de Isabel
INSERT INTO
    Jokes (title, body, author_id)
VALUES (
        'Chiste 1 de Isabel',
        'Cuerpo del chiste 1 de Isabel',
        3
    ),
    (
        'Chiste 2 de Isabel',
        'Cuerpo del chiste 2 de Isabel',
        3
    ),
    (
        'Chiste 3 de Isabel',
        'Cuerpo del chiste 3 de Isabel',
        3
    );

-- Asociar chistes de Isabel con las temáticas correspondientes
INSERT INTO
    Jokes_Themes (joke_id, theme_id)
VALUES (7, 3), -- Chiste 1 de Isabel -> chistes verdes
    (8, 1), -- Chiste 2 de Isabel -> humor negro
    (9, 2);
-- Chiste 3 de Isabel -> humor amarillo
-- Chistes de Pedro
INSERT INTO
    Jokes (title, body, author_id)
VALUES (
        'Chiste 1 de Pedro',
        'Cuerpo del chiste 1 de Pedro',
        4
    ),
    (
        'Chiste 2 de Pedro',
        'Cuerpo del chiste 2 de Pedro',
        4
    ),
    (
        'Chiste 3 de Pedro',
        'Cuerpo del chiste 3 de Pedro',
        4
    );

-- Asociar chistes de Pedro con las temáticas correspondientes
INSERT INTO
    Jokes_Themes (joke_id, theme_id)
VALUES (10, 1), -- Chiste 1 de Pedro -> humor negro
    (11, 2), -- Chiste 2 de Pedro -> humor amarillo
    (12, 3);
-- Chiste 3 de Pedro -> chistes verdes