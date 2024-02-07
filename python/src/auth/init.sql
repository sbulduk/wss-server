CREATE USER "auth_user"@"192.168.10.23" IDENTIFIED BY "Administrator";

CREATE DATABASE auth;
GRANT ALL PRIVILEGES ON auth.* TO "auth_user"@"192.168.10.23";
USE auth;

CREATE TABLE users(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL
);

INSERT INTO users (email,password) VALUES ("sbulduk@taskin-logistics.com","Sbulduk2023!");