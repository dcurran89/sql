USE codeup_test_db;

SELECT * FROM albums_migration;

SELECT Name AS 'All Albums by Pink Floyd' FROM albums_migration WHERE Artist = 'Pink FLoyd';
SELECT Release_Date AS 'The year Michael Jackson\'s Thriller was released' FROM albums_migration WHERE Name = 'Thriller';
SELECT Genre AS 'Genre for Dark Side of the Moon' FROM albums_migration WHERE Name = 'Dark Side of the Moon';
SELECT Name AS 'Albums released in the 1990s' FROM albums_migration WHERE Release_Date BETWEEN 1990 AND 1999;
SELECT Name AS 'Albums That Had Less than 25 million Certified Sales' FROM albums_migration WHERE Sales < 25;
SELECT Name AS 'All the Albums in the Rock Genre' FROM albums_migration WHERE Genre LIKE '%Rock%';
