CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email) VALUES ('testuser1', 'testuser1@example.com');
INSERT INTO users (username, email) VALUES ('testuser2', 'testuser2@example.com');
INSERT INTO users (username, email) VALUES ('testuser3', 'testuser3@example.com');

