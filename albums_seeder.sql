USE codeup_test_db;

TRUNCATE albums_migration;

INSERT INTO albums_migration (Artist, Name, Release_Date, Sales, Genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 48.1, 'Pop, Rock, R&B'),
       ('AC/DC', 'Back in Black', 1980, 25.9,'Hard Rock'),
       ('Pink Floyd', 'Dark Side of the Moon', 1973, 22.7, 'Progressive Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 27.4, 'Soundtrack/R&B, Soul, Pop'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 20.6, 'Hard Rock, Progressive Rock'),
       ('Eagles', 'Their Greatest Hits', 1976, 32.2, 'Rock, Soft Rock, Folk Rock'),
       ('Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft Rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 19, 'Disco'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, Pop'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard Rock, Heavy Metal');




