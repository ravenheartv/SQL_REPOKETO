DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS personas;

PRAGMA foreign_keys = ON;

CREATE TABLE personas(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL UNIQUE,
    edad INTEGER,
    pelicula_fav TEXT
);

CREATE TABLE peliculas(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL UNIQUE,
    genero TEXT,
    año INTEGER,
    director TEXT,
    autor INTEGER NOT NULL,
    FOREIGN KEY (autor) REFERENCES personas(id)
);

INSERT INTO personas (nombre, edad, pelicula_fav) VALUES ('Juan', 30, 'Elvis Presley: The Searcher');
INSERT INTO personas (nombre, edad, pelicula_fav) VALUES ('María', 25, 'Don''t Look Up');
INSERT INTO personas (nombre, edad, pelicula_fav) VALUES ('Pedro', 40, 'The Batman');
INSERT INTO personas (nombre, edad, pelicula_fav) VALUES ('Ana', 35, 'Teenage Mutant Ninja Turtles');
INSERT INTO personas (nombre, edad, pelicula_fav) VALUES ('Luis', 28, 'Top Gun: Maverick');
INSERT INTO personas (nombre, edad, pelicula_fav) VALUES ('Elena', 45, 'Scary Movie');

INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES 
('Dune', 'Ciencia Ficción', 2021, 'Denis Villeneuve', 4),
('Don''t Look Up', 'Comedia', 2021, 'Adam McKay', 2),
('The Batman', 'Acción', 2022, 'Matt Reeves', 3),
('Top Gun: Maverick', 'Acción', 2022, 'Joseph Kosinski', 5),
('Elvis Presley: The Searcher', 'Documental', 2018, 'Thom Zimny', 1),
('Teenage Mutant Ninja Turtles', 'Acción', 1990, 'Steve Barron', 6),
('Interstellar', 'Ciencia Ficción', 2014, 'Christopher Nolan', 7),
('Inception', 'Ciencia Ficción', 2010, 'Christopher Nolan', 7),
('The Shawshank Redemption', 'Drama', 1994, 'Frank Darabont', 8),
('Pulp Fiction', 'Crimen', 1994, 'Quentin Tarantino', 9),
('The Godfather', 'Crimen', 1972, 'Francis Ford Coppola', 10),
('Toy Story', 'Animación', 1995, 'John Lasseter', 11),
('Shrek', 'Animación', 2001, 'Andrew Adamson', 12),
('Spirited Away', 'Animación', 2001, 'Hayao Miyazaki', 13),
('The Lion King', 'Animación', 1994, 'Roger Allers', 14),
('Frozen', 'Animación', 2013, 'Chris Buck', 15),
('Scary Movie', 'Comedia de terror', 2000, 'Keenen Ivory Wayans', 16),
('Scary Movie 2', 'Comedia de terror', 2001, 'Keenen Ivory Wayans', 16),
('Scary Movie 3', 'Comedia de terror', 2003, 'David Zucker', 17),
('Scary Movie 4', 'Comedia de terror', 2006, 'David Zucker', 18);