/*
The following code was created with Toad Data Modeler
*/

/*The line below allows us to use the uuid_generate_v4() function */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/*
Created: 1/14/2019
Modified: 1/14/2019
Model: PostgreSQL 10
Database: PostgreSQL 10
*/


-- Create tables section -------------------------------------------------

-- Table Movies

CREATE TABLE "Movies"(
 "movie_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "release_date" Date NOT NULL,
 "title" Character varying NOT NULL,
 "budget" Bigint
)
;

-- Add keys for table Movies

ALTER TABLE "Movies" ADD CONSTRAINT "Key1" PRIMARY KEY ("movie_id")
;

-- Table Actors

CREATE TABLE "Actors"(
 "actor_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "location_id" UUID DEFAULT uuid_generate_v4 (),
 "first_name" Character varying NOT NULL,
 "surname" Character varying NOT NULL,
 "eye_color" Character varying,
 "date_of_birth" Date
)
;

-- Create indexes for table Actors

CREATE INDEX "IX_Relationship14" ON "Actors" ("location_id")
;

-- Add keys for table Actors

ALTER TABLE "Actors" ADD CONSTRAINT "Key2" PRIMARY KEY ("actor_id")
;

-- Table Directors

CREATE TABLE "Directors"(
 "director_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "first_name" Character varying NOT NULL,
 "surname" Character varying NOT NULL
)
;

-- Add keys for table Directors

ALTER TABLE "Directors" ADD CONSTRAINT "Key3" PRIMARY KEY ("director_id")
;

-- Table Genres

CREATE TABLE "Genres"(
 "type" Character varying NOT NULL,
 "description" Character varying
)
;

-- Add keys for table Genres

ALTER TABLE "Genres" ADD CONSTRAINT "Key4" PRIMARY KEY ("type")
;

-- Table Locations

CREATE TABLE "Locations"(
 "location_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "country" Character varying NOT NULL,
 "city" Character varying NOT NULL,
 "state" Character varying
)
;

-- Add keys for table Locations

ALTER TABLE "Locations" ADD CONSTRAINT "Key5" PRIMARY KEY ("location_id")
;

-- Table Directed

CREATE TABLE "Directed"(
 "movie_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "director_id" UUID DEFAULT uuid_generate_v4 () NOT NULL
)
;

-- Add keys for table Directed

ALTER TABLE "Directed" ADD CONSTRAINT "Key6" PRIMARY KEY ("movie_id","director_id")
;

-- Table GenreType

CREATE TABLE "GenreType"(
 "movie_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "type" Character varying NOT NULL
)
;

-- Add keys for table GenreType

ALTER TABLE "GenreType" ADD CONSTRAINT "Key7" PRIMARY KEY ("movie_id","type")
;

-- Table Stars

CREATE TABLE "Stars"(
 "movie_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "actor_id" UUID DEFAULT uuid_generate_v4 () NOT NULL
)
;

-- Add keys for table Stars

ALTER TABLE "Stars" ADD CONSTRAINT "Key8" PRIMARY KEY ("movie_id","actor_id")
;

-- Table FilmedAt

CREATE TABLE "FilmedAt"(
 "movie_id" UUID DEFAULT uuid_generate_v4 () NOT NULL,
 "location_id" UUID DEFAULT uuid_generate_v4 () NOT NULL
)
;

-- Add keys for table FilmedAt

ALTER TABLE "FilmedAt" ADD CONSTRAINT "Key9" PRIMARY KEY ("movie_id","location_id")
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Directed" ADD CONSTRAINT "has_director" FOREIGN KEY ("movie_id") REFERENCES "Movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Directed" ADD CONSTRAINT "directs" FOREIGN KEY ("director_id") REFERENCES "Directors" ("director_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "GenreType" ADD CONSTRAINT "has_genre_type" FOREIGN KEY ("movie_id") REFERENCES "Movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "GenreType" ADD CONSTRAINT "movies_with_genre" FOREIGN KEY ("type") REFERENCES "Genres" ("type") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Stars" ADD CONSTRAINT "has_actors" FOREIGN KEY ("movie_id") REFERENCES "Movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Stars" ADD CONSTRAINT "acts_in" FOREIGN KEY ("actor_id") REFERENCES "Actors" ("actor_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "FilmedAt" ADD CONSTRAINT "filmed" FOREIGN KEY ("movie_id") REFERENCES "Movies" ("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "FilmedAt" ADD CONSTRAINT "movies_filmed_there" FOREIGN KEY ("location_id") REFERENCES "Locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Actors" ADD CONSTRAINT "was_born" FOREIGN KEY ("location_id") REFERENCES "Locations" ("location_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;




