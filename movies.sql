CREATE DATABASE movie_analysis;
USE movie_analysis;

CREATE TABLE genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    year INT,
    rating DECIMAL(3,1),
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

INSERT INTO genres VALUES
(1, 'Action'),
(2, 'Drama'),
(3, 'Sci-Fi'),
(4, 'Animation'),
(5, 'Thriller');

INSERT INTO movies VALUES
(1, 'Avatar', 2009, 7.8, 3),
(2, 'Titanic', 1997, 7.9, 2),
(3, 'Inception', 2010, 8.8, 3),
(4, 'The Dark Knight', 2008, 9.0, 1),
(5, 'Interstellar', 2014, 8.7, 3),
(6, 'Gladiator', 2000, 8.5, 1),
(7, 'The Matrix', 1999, 8.7, 1),
(8, 'Parasite', 2019, 8.5, 2),
(9, 'Avengers Endgame', 2019, 8.4, 1),
(10, 'Toy Story', 1995, 8.3, 4);
