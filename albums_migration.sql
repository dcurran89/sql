USE codeup_test_db;

DROP TABLE IF EXISTS albums_migration;

CREATE TABLE albums_migration (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Artist VARCHAR(100) NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Release_Date  YEAR(4) NOT NULL,
    Sales DOUBLE NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);