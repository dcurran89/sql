USE codeup_test_db;

SELECT * FROM albums;

SELECT Name AS 'All Albums by Pink Floyd' FROM albums WHERE Artist = 'Pink FLoyd';
SELECT Release_Date AS 'The year Michael Jackson\'s Thriller was released' FROM albums WHERE Name = 'Thriller';
SELECT Genre AS 'Genre for Dark Side of the Moon' FROM albums WHERE Name = 'Dark Side of the Moon';
SELECT Name AS 'Albums released in the 1990s' FROM albums WHERE Release_Date BETWEEN 1990 AND 1999;
SELECT Name AS 'Albums That Had Less than 25 million Certified Sales' FROM albums WHERE Sales < 25;
SELECT Name AS 'All the Albums in the Rock Genre' FROM albums WHERE Genre LIKE '%Rock%';
