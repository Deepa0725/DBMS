SHOW DATABASES; 

CREATE DATABASE Employees;
SHOW DATABASES; 

USE Employees;  
SHOW TABLES; 

CREATE TABLE employees ( 
id INT, 
name VARCHAR(100), 
position VARCHAR(50), 
salary DECIMAL(10, 2) 
); 
desc employees;

CREATE TABLE employees1 ( 
id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
email VARCHAR(100) UNIQUE, 
salary DECIMAL(10, 2), 
hire_date DATE 
);
desc employees1;  
 
INSERT INTO employees1 VALUES
(2, 'Jane Smith', 'Engineer', 55000, '2023-11-12'); 
Select *from employees1;

UPDATE employees1 SET salary = 70000 WHERE id =2; 
Select *from employees1;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO employees1
VALUES 
(1, 'Dua', 'Docter', 65000, '2023-11-12');
Select *from employees1;

DELETE FROM employees1 WHERE id = 1; 
 Select *from employees1;
 
COMMIT; 
 
ROLLBACK;