SELECT j.id, j.title, j.body
FROM Jokes j
JOIN Jokes_Themes jt ON j.id = jt.joke_id
JOIN Themes t ON jt.theme_id = t.id
WHERE t.name = 'humor negro'
AND j.author_id = 1; -- ID de Manolito es 1
