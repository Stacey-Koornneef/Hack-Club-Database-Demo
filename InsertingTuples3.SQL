INSERT INTO "Directed" (movie_id, director_id)
VALUES ((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT director_id FROM "Directors" d WHERE d.first_name = 'Joss' AND d.surname = 'Whedon')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT director_id FROM "Directors" d WHERE d.first_name = 'Joe' AND d.surname = 'Russo')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT director_id FROM "Directors" d WHERE d.first_name = 'Anthony' AND d.surname = 'Russo'));
