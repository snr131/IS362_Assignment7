CREATE TABLE IF NOT EXISTS movies (
	id integer PRIMARY KEY,
	movie_name TEXT UNIQUE NOT NULL);
	
INSERT INTO movies (id, movie_name)
VALUES
(1, 'Parasite'),
(2, '1917'),
(3, 'Ford v Ferrari'),
(4, 'Joker'),
(5, 'Once Upon a Time in Hollywood'),
(6, 'The Irishman')
ON CONFLICT (id)
DO NOTHING;

CREATE TABLE reviews (
	id SERIAL PRIMARY KEY,
	user_name TEXT NOT NULL,
	movie_id integer,
	star_rating integer);
	
INSERT INTO reviews (user_name, movie_id, star_rating)
VALUES
('sjm', 1, 4),
('kb', 1, 5),
('fm', 1, 4),
('jll', 1, 5),
('dm', 1, 1),
('dl', 1, 3),
('npl', 1, 5),
('ajl', 1, 5),
('sm', 1, 2),
('am', 2, 3),
('kb', 2, 5),
('fm', 2, 3),
('jll', 2, 5),
('dm', 2, 5),
('dl', 2, 4),
('npl', 2, 2),
('ajl', 2, 3),
('sm', 2, 2),
('am', 3, 2),
('sjm', 3, 2),
('fm', 3, 2),
('jll', 3, 3),
('dm', 3, 1),
('dl', 3, 5),
('npl', 3, 4),
('ajl', 3, 4),
('sm', 3, 4),
('am', 4, 5),
('sjm', 4, 5),
('kb', 4, 5),
('jll', 4, 5),
('dm', 4, 5),
('dl', 4, 5),
('npl', 4, 4),
('ajl', 4, 4),
('sm', 4, 4),
('am', 5, 3),
('sjm', 5, 3),
('kb', 5, 1),
('fm', 5, 4),
('dm', 5, 4),
('dl', 5, 5),
('npl', 5, 3),
('ajl', 5, 5),
('sm', 5, 2),
('am', 6, 3),
('sjm', 6, 3),
('kb', 6, 5),
('fm', 6, 4),
('jll', 6, 4),
('dm', 6, 5),
('dl', 6, 4),
('npl', 6, 5),
('ajl', 6, 5);


SELECT reviews.user_name, movies.movie_name, reviews.star_rating
FROM reviews
LEFT JOIN movies
ON movies.id = reviews.movie_id;