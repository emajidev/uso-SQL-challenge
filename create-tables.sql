-- Create Users table
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Create Themes table
CREATE TABLE Themes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Jokes table
CREATE TABLE Jokes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    body TEXT NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Users(id)
);

-- Create table for the association between Jokes and Themes
CREATE TABLE Jokes_Themes (
    joke_id INT NOT NULL,
    theme_id INT NOT NULL,
    PRIMARY KEY (joke_id, theme_id),
    FOREIGN KEY (joke_id) REFERENCES Jokes(id),
    FOREIGN KEY (theme_id) REFERENCES Themes(id)
);
