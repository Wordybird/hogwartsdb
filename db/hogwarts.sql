DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
name VARCHAR(255),
url TEXT,
id SERIAL8 primary key
);

CREATE TABLE students (
first_name VARCHAR(255),
last_name VARCHAR(255),
house_id INT2 references houses(id),
age INT2,
id SERIAL8 primary key
);