-- create a new database named adv_php
CREATE DATABASE adv_php;

-- select the new db
USE adv_php;

-- create a new table named products
CREATE TABLE products (
 id INT NOT NULL AUTO_INCREMENT,
 name VARCHAR(128) NOT NULL,
 description TEXT NULL DEFAULT NULL,
 PRIMARY KEY (id)
); 

-- insert new records into the products table
INSERT INTO products (name, description)
VALUES ('First Product', 'This is the first product'),
       ('Second Product', 'A second product goes here'),
       ('Product  Number 3', ''),
       ('Last of the Original Products', 'A description with <strong>HTML</strong>.');

-- assign user usage privileges
CREATE USER 'adv_php_user'@'localhost' IDENTIFIED BY 'secret';

-- assign database privileges to user
GRANT ALL PRIVILEGES ON adv_php.* TO 'adv_php_user'@'localhost';