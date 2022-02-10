USE adlister_db;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(250) NOT NULL,
    description VARCHAR(250),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
                ON DELETE CASCADE
);

SHOW Tables;
DESCRIBE users;
DESCRIBE ads;

INSERT INTO users (username, email, password)
    VALUES ('wolverine', 'claws@xmen.com', 'adamantium');

SELECT * FROM users;

