USE codeup_test_db;

SELECT Name AS 'All Albums In Table', Sales FROM albums_migration;
UPDATE albums_migration SET Sales = (Sales * 10);
SELECT * FROM albums_migration;

SELECT Name AS 'Albums Released Before 1980' FROM albums_migration WHERE Release_Date < 1980;
UPDATE albums_migration SET Release_Date = 1901 WHERE Release_Date < 1980;
SELECT * FROM albums_migration;

SELECT Name AS 'All Michael Jackson Albums' FROM albums_migration WHERE Artist = 'Michael Jackson';
UPDATE albums_migration SET Artist = 'Peter Jackson' WHERE Artist = 'Michael Jackson';
SELECT * FROM albums_migration;