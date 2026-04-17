USE movie_recommendation;

-- 1. View all users
SELECT * FROM users;

-- 2. View all movies
SELECT * FROM movies;

-- 3. View all ratings
SELECT * FROM ratings;

-- 4. Top rated movies (Recommendation - based on rating)
SELECT m.title, AVG(r.rating) AS avg_rating
FROM movies m
JOIN ratings r ON m.movie_id = r.movie_id
GROUP BY m.movie_id
ORDER BY avg_rating DESC;

-- 5. Genre-based recommendation (example: Sci-Fi)
SELECT * FROM movies
WHERE genre = 'Sci-Fi';

-- 6. Movies rated by a specific user (example: user_id = 1)
SELECT m.title, r.rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
WHERE r.user_id = 1;