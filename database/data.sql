USE movie_recommendation;

INSERT INTO users (name) VALUES
('Akhila'),
('Rahul');

INSERT INTO movies (title, genre) VALUES
('Dhurandhar', 'Action/Crime');
('Bombay Velvet', 'Action/Crime')
('Inception', 'Sci-Fi'),
('Titanic', 'Romance'),
('Avengers', 'Action'),
('Interstellar', 'Sci-Fi'),
('The Notebook', 'Romance');


INSERT INTO ratings (user_id, movie_id, rating) VALUES
(1, 1, 5),
(1, 2, 3),
(1, 4, 4),
(2, 3, 4),
(2, 5, 5),
(1, 6, 4),
(1, 7, 5);