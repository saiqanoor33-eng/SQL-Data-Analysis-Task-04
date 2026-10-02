USE movie_analysis;

-- SELECT
SELECT * FROM movies;

-- WHERE
SELECT title, rating
FROM movies
WHERE rating >= 8.5;

-- ORDER BY
SELECT title, year, rating
FROM movies
ORDER BY rating DESC;

-- GROUP BY with COUNT
SELECT genre_id, COUNT(*) AS total_movies
FROM movies
GROUP BY genre_id;

-- GROUP BY with AVG
SELECT genre_id, AVG(rating) AS average_rating
FROM movies
GROUP BY genre_id;

-- Aggregate function MAX
SELECT MAX(rating) AS highest_rating
FROM movies;

-- JOIN
SELECT m.title, m.year, m.rating, g.genre_name
FROM movies m
JOIN genres g
ON m.genre_id = g.genre_id;

-- JOIN + GROUP BY + COUNT
SELECT g.genre_name, COUNT(m.movie_id) AS total_movies
FROM genres g
JOIN movies m
ON g.genre_id = m.genre_id
GROUP BY g.genre_name;

-- JOIN + GROUP BY + AVG + ORDER BY
SELECT g.genre_name, AVG(m.rating) AS average_rating
FROM genres g
JOIN movies m
ON g.genre_id = m.genre_id
GROUP BY g.genre_name
ORDER BY average_rating DESC;
