DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE students (
first_name VARCHAR(255),
last_name VARCHAR(255),
house VARCHAR(255),
age INT2,
id SERIAL8 primary key
);

CREATE TABLE houses (
name VARCHAR(255),
id SERIAL8 primary key
);