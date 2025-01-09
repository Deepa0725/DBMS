SHOW DATABASES;
CREATE DATABASE Employee;
USE Employee; 
SHOW TABLES;

Creating Tables:
Without Constraints:
 CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

With Constraints (Primary Key, Not Null, Unique):
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2),
    hire_date DATE
);
USE your_database_name; 
SHOW TABLES;

Creating Tables:
Without Constraints:
 CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

With Constraints (Primary Key, Not Null, Unique):
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2),
    hire_date DATE
);

