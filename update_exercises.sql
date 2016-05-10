USE codeup_test_db;

SELECT Name AS 'All Albums In Table', Sales FROM albums;
UPDATE albums SET Sales = (Sales * 10);
SELECT * FROM albums;

SELECT Name AS 'Albums Released Before 1980' FROM albums WHERE Release_Date < 1980;
UPDATE albums SET Release_Date = 1901 WHERE Release_Date < 1980;
SELECT * FROM albums;

SELECT Name AS 'All Michael Jackson Albums' FROM albums WHERE Artist = 'Michael Jackson';
UPDATE albums SET Artist = 'Peter Jackson' WHERE Artist = 'Michael Jackson';
SELECT * FROM albums;
