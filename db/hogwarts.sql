DROP TABLE IF EXISTS students;

CREATE TABLE students (
first_name VARCHAR(255),
last_name VARCHAR(255),
house VARCHAR(255),
age INT2,
id SERIAL8 primary key
);