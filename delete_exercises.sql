use codeup_test_db;

DELETE FROM albums_migration WHERE Release_Date > 1991;
DELETE FROM albums_migration WHERE Genre LIKE '%Disco%';
DELETE From albums_migration WHERE Artist = 'Whitney Houston';
