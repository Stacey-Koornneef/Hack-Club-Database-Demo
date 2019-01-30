INSERT INTO "Movies" (release_date, title, budget)
VALUES('2012-05-04', 'The Avengers', '220000000'),
		('2011-05-06', 'Thor', '150000000'),
		('2010-10-01', 'The Social Network', '40000000'),
		('2018-04-27', 'Avengers: Infinity War', '321000000'),
		('2013-05-31', 'Now You See Me', '75000000');

INSERT INTO "Genres" (type, description)
VALUES ('Horror', 'It''s Scary'),
	('Comedy', 'It''s funny'),
	('Romance', 'It''s gushy'),
	('Action', 'Some violence, but not a lot'),
	('Superhero', 'There''s probably a tragic backstory'),
	('Drama', 'Very dramatic'),
	('Science Fiction', 'It will probably come true in 50 years'),
	('Adventure', 'To boldly go where no man has gone before'),
	('Thriller', 'Kinda like horror, but not really'),
	('Animation', 'Might have been a human, might have been a computer who knows anymore');
	 
INSERT INTO "Directors" (first_name, surname)
VALUES ('Joss', 'Whedon'),
			('Joe', 'Russo'),
			('Anthony', 'Russo');

INSERT INTO "Locations" (country, city)
VALUES('England', 'London'),
		('Havana', 'Cuba');
		 
INSERT INTO "Locations" (country, city, state)
VALUES('USA', 'New York', 'New York'),
		('Canada', 'Toronto', 'Ontario');
		 
		 
INSERT INTO "Locations" (country, city, state)
VALUES ('United States of America', 'Boston', 'Massachusetts'),
		('USA', 'Kenosha', 'Wisconsin'),
		('Australia', 'Melbourne', 'Victoria'),
		('USA', 'Washington', 'D.C');
