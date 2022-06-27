-- Schema
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  line_1       varchar(255) NOT NULL,
  city         varchar(255) NOT NULL,
  state        varchar(255) NOT NULL,
  zipcode      integer NOT NULL
);

CREATE TABLE classes(
  id           serial PRIMARY KEY,
  name         varchar(255) NOT NULL,
  credits      integer
);

CREATE TABLE enrollments(
  id           serial PRIMARY KEY,
  student_id   integer NOT NULL,
  class_id     integer NOT NULL,
  grade        varchar(255)
);
