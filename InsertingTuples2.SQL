INSERT INTO "Actors" (location_id, first_name, surname, date_of_birth)
VALUES ((SELECT location_id FROM "Locations" l WHERE l.city = 'London' AND l.country = 'England'), 'Tom', 'Hiddleston', '1981-02-09');

INSERT INTO "Actors" (location_id, first_name, surname, eye_color, date_of_birth)
VALUES ((SELECT location_id FROM "Locations" l WHERE l.country = 'Australia' AND l.city = 'Melbourne' AND l.state = 'Australia'), 'Chris', 'Hemsworth', 'Blue', '1983-08-11'),
		((SELECT location_id FROM "Locations" l WHERE l.country = 'Australia' AND l.city = 'Melbourne' AND l.state = 'Australia'), 'Liam', 'Hemsworth', 'Blue', '1990-01-13'),
		((SELECT location_id FROM "Locations" l WHERE l.country = 'United States of America' AND l.city = 'Boston' AND l.state = 'Massachusetts'), 'Chris', 'Evans', 'Blue', '1981-06-13'),
		((SELECT location_id FROM "Locations" l WHERE l.country = 'USA' AND l.city = 'New York' AND l.state = 'New York'), 'Scarlett', 'Johansson', 'Green', '1984-11-22');
		
INSERT INTO "Actors" (location_id, first_name, surname)
VALUES ((SELECT location_id FROM "Locations" l WHERE l.country = 'Australia' AND l.city = 'Melbourne' AND l.state = 'Australia'), 'Luke', 'Hemsworth');

INSERT INTO "Actors" (location_id, first_name, surname, date_of_birth)
VALUES ((SELECT location_id FROM "Locations" l WHERE l.country = 'USA' AND l.city = 'New York' AND l.state = 'New York'), 'Jesse', 'Eisenberg', '1983-10-05'),
		((SELECT location_id FROM "Locations" l WHERE l.country = 'USA' AND l.city = 'Washington' AND l.state = 'D.C.'), 'Samuel L.', 'Jackson', '1948-12-21'),
		((SELECT location_id FROM "Locations" l WHERE l.country = 'USA' AND l.city = 'Kenosha' AND l.state = 'Wisconsin'), 'Mark', 'Ruffalo', '1967-11-22');
