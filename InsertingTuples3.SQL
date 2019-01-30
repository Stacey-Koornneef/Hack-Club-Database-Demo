INSERT INTO "Directed" (movie_id, director_id)
VALUES ((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT director_id FROM "Directors" d WHERE d.first_name = 'Joss' AND d.surname = 'Whedon')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT director_id FROM "Directors" d WHERE d.first_name = 'Joe' AND d.surname = 'Russo')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT director_id FROM "Directors" d WHERE d.first_name = 'Anthony' AND d.surname = 'Russo'));

INSERT INTO "FilmedAt" (movie_id, location_id)
VALUES ((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT location_id FROM "Locations" l WHERE l.city = 'New York' AND l.state = 'New York' AND l.country = 'USA'));

INSERT INTO "GenreType" (movie_id, type)
VALUES ((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT type FROM "Genres" g WHERE g.type = 'Action')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT type FROM "Genres" g WHERE g.type = 'Superhero')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Thor'), (SELECT type FROM "Genres" g WHERE g.type = 'Action')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Thor'), (SELECT type FROM "Genres" g WHERE g.type = 'Superhero')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Social Network'), (SELECT type FROM "Genres" g WHERE g.type = 'Drama')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Now You See Me'), (SELECT type FROM "Genres" g WHERE g.type = 'Thriller')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Now You See Me'), (SELECT type FROM "Genres" g WHERE g.type = 'Drama')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT type FROM "Genres" g WHERE g.type = 'Action')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT type FROM "Genres" g WHERE g.type = 'Superhero'));
											      
INSERT INTO "Stars" (movie_id, actor_id)
VALUES ((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Tom' AND a.surname = 'Hiddleston')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Chris' AND a.surname = 'Hemsworth')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Chris' AND a.surname = 'Evans')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Scarlett' AND a.surname = 'Johansson')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Samuel L.' AND a.surname = 'Jackson')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Avengers'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Mark' AND a.surname = 'Ruffalo')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Thor'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Tom' AND a.surname = 'Hiddleston')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Thor'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Chris' AND a.surname = 'Hemsworth')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'The Social Network'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Jesse' AND a.surname = 'Eisenberg')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Tom' AND a.surname = 'Hiddleston')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Chris' AND a.surname = 'Hemsworth')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Chris' AND a.surname = 'Evans')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Scarlett' AND a.surname = 'Johansson')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Samuel L.' AND a.surname = 'Jackson')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Avengers: Infinity War'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Mark' AND a.surname = 'Ruffalo')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Now You See Me'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Jesse' AND a.surname = 'Eisenberg')),
		((SELECT movie_id FROM "Movies" m WHERE m.title = 'Now You See Me'), (SELECT actor_id FROM "Actors" a WHERE a.first_name = 'Mark' AND a.surname = 'Ruffalo'));
