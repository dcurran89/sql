USE league_db;

CREATE TABLE teams (
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name        VARCHAR(120),
    stadium     VARCHAR(50),
    league      VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE players (
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name        VARCHAR(120),
    position    VARCHAR(30),
    team_id     INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

CREATE TABLE games (
    visitor_team_id INT UNSIGNED NOT NULL,
    local_team_id   INT UNSIGNED NOT NULL,
    date            DATETIME,
    runs_visitor    INT,
    runs_local      INT,
    PRIMARY KEY     (visitor_team_id, local_team_id, date),
    FOREIGN KEY     (visitor_team_id) REFERENCES teams(id),
    FOREIGN KEY     (local_team_id) REFERENCES teams(id)
);