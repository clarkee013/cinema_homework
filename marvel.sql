DROP TABLE attendances;
DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE attendances (
	id SERIAL8 PRIMARY KEY,
	person_id INT REFERENCES people(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO people (name) VALUES ('John Allan');
INSERT INTO people (name) VALUES ('Colin Bell');
INSERT INTO people (name) VALUES ('Graeme Broose');
INSERT INTO people (name) VALUES ('Stuart Bryce');
INSERT INTO people (name) VALUES ('Christopher Burn');
INSERT INTO people (name) VALUES ('David Clarkson');
INSERT INTO people (name) VALUES ('Samuel DaBell');
INSERT INTO people (name) VALUES ('Crawford Davidson');
INSERT INTO people (name) VALUES ('Natasha Ford');
INSERT INTO people (name) VALUES ('Dale Johnston');
INSERT INTO people (name) VALUES ('Harvey Wheaton');
INSERT INTO people (name) VALUES ('Kieran Marshall');
INSERT INTO people (name) VALUES ('Stephen Ng');
INSERT INTO people (name) VALUES ('Michael Robertson');
INSERT INTO people (name) VALUES ('Jia Wong');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');

-- Q1 - Return ALL the data in the 'movies' table.
-- A1 - SELECT * FROM movies
-- Q2 - Return ONLY the name column from the 'people' table
-- Q3 - SELECT (name) FROM people;
-- Q4 - Oops! Someone at CodeClan spelled Graham's name wrong! Change it to reflect the proper spelling ('Graeme Broose' should be 'Graham Bruce').
-- A4 -UPDATE people SET name = 'Graham Bruce' WHERE name = 'Graeme Broose';
-- Q5 - Return ONLY your name from the 'people' table.
-- A5 - SELECT name FROM people WHERE name = 'David Clarkson';
-- Q6 - The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
-- A6 - DELETE FROM movies WHERE title = 'Batman Begins';
-- Q7 - Create a new entry in the 'people' table with the name of one of the instructors.
-- A7 - INSERT INTO people (name) VALUES ('John McCollum');
-- Q8 - Harvey Wheaton has decided to hijack our movie evening, Remove him from the table of people.
-- A8 - DELETE FROM people WHERE name = ('Harvey Wheaton')
-- Q9 - The cinema has just heard that they will be holding an exclusive midnight showing of 'Spider-man: Homecoming'!! Create a new entry in the 'movies' table to reflect this.
-- A9 - INSERT INTO movies (title, year, show_time) VALUES ('Spider-man: Homecoming', 2017, '00:00');
-- Q10 - The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 15:30 to 20:00
UPDATE movies SET show_time = '20:00' WHERE title = 'Guardians of the Galaxy 2' 