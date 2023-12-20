CREATE DATABASE db_university_schema;
USE db_university_schema;

CREATE TABLE courses (
    `id` INT AUTO_INCREMENT,
    `degree_id` INT,
    `name`  VARCHAR(255),
    `description` VARCHAR(255),
    `period` DATE,
    `year` YEAR,
    `cfu` INT,
    PRIMARY KEY(id)
);

CREATE TABLE students (
    `id` INT  AUTO_INCREMENT,
    `degree_id` INT,
    `name` VARCHAR(255),
    `surname` VARCHAR(255),
    `date_of_birth` DATE,
    `fiscal_code` VARCHAR(16),
    `enrolment_date` DATE,
    `registration_number` INT,
    `email` VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE degrees (
    `id` INT AUTO_INCREMENT,
    `departmant_id` INT,
    `level` INT,
    `name` VARCHAR(255),
    `website` VARCHAR(255),
    `email` VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE departments (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255),
    `address` VARCHAR(255),
    `phone` VARCHAR(20),
    `email` VARCHAR(255),
    `website` VARCHAR(255),
    `head_of_department` VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE teachers (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255),
    `surname` VARCHAR(255),
    `phone` VARCHAR(20),
    `email` VARCHAR(255),
    `office_address` VARCHAR(255),
    `office_number` INT,
    PRIMARY KEY(id)
);

CREATE TABLE exams (
    `id` INT AUTO_INCREMENT,
    `student_id` INT,
    `course_id` INT,
    `date` DATE,
    `hour` TIME,
    `address` VARCHAR(255),
     PRIMARY KEY(id)
);



ALTER table courses ADD FOREIGN KEY (degree_id) REFERENCES degrees(id);
ALTER table exams ADD FOREIGN KEY (course_id) REFERENCES courses(id);
ALTER table students ADD FOREIGN KEY (degree_id) REFERENCES degrees(id);
ALTER table degrees ADD FOREIGN KEY (departmant_id) REFERENCES departments(id);






