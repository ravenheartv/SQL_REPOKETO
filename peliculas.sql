DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;

PRAGMA foreign_keys = ON;

CREATE TABLE usuarios(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL UNIQUE,
    peliculafav TEXT
);

CREATE TABLE peliculas(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL UNIQUE,
    genero TEXT,
    año INTEGER,
    director TEXT,
    autor INTEGER NOT NULL,
    FOREIGN KEY (autor) REFERENCES usuarios(id)
);

INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 'Elvis Presley: The Searcher');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario2', 'Don''t Look Up');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario3', 'The Batman');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario4', 'Dune');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario5', 'Top Gun: Maverick');
INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario6', 'Tortugas Ninja');

INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Dune', 'Ciencia Ficción', 2021, 'Denis Villeneuve', 4);
('Don''t Look Up', 'Comedia', 2021, 'Adam McKay', 2);
('The Batman', 'Acción', 2022, 'Matt Reeves', 3);
('Top Gun: Maverick', 'Acción', 2022, 'Joseph Kosinski', 5);
('Elvis Presley: The Searcher', 'Documental', 2018, 'Thom Zimny', 1);
('Teenage Mutant Ninja Turtles', 'Acción', 1990, 'Steve Barron', 6);
Ñ