USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    user_id INT UNSIGNED,
    title VARCHAR(100),
    description TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);