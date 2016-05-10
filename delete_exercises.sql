use codeup_test_db;

DELETE FROM albums WHERE Release_Date > 1991;
DELETE FROM albums WHERE Genre LIKE '%Disco%';
DELETE From albums WHERE Artist = 'Whitney Houston';
