CREATE DATABASE HolaMundo;
USE HolaMundo;
CREATE TABLE user (
id int not null auto_increment,
name varchar (50) not null,
edad int not null,
email varchar (100) not null,
primary key (id)
);
INSERT INTO user(name, edad, email) values('Oscar','25','oscar23@gmail.com');
INSERT INTO user(name, edad, email) values('Layla','15','layla@gmail.com');
INSERT INTO user(name, edad, email) values('Nicolas','36','nicolas@gmail.com');
INSERT INTO user(name, edad, email) values('Chanchito','7','chanchito@gmail.com');
 
 SHOW DATABASES;
 
SELECT * FROM user;
SELECT * FROM user limit 1;
SELECT * FROM user;
SELECT id, name as nombre from user;