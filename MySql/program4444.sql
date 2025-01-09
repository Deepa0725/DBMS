CREATE TABLE Employees777 ( 
employee_id INT PRIMARY KEY, 
name VARCHAR(100), 
department VARCHAR(50), 
salary DECIMAL(10, 2), 
hire_date DATE 
);
desc employees777;
 
CREATE TABLE Departments ( 
department_id INT PRIMARY KEY, 
department_name VARCHAR(100) 
);
desc Departments; 

CREATE TABLE Projects ( 
project_id INT PRIMARY KEY, 
project_name VARCHAR(100), 
department_id INT, 
FOREIGN KEY (department_id) REFERENCES Departments(department_id) 
);
Desc Projects; 

CREATE TABLE Assignments (
employee_id INT, 
project_id INT, 
hours_worked INT, 
PRIMARY KEY (employee_id, project_id), 
FOREIGN KEY (employee_id) REFERENCES Employees777(employee_id), FOREIGN KEY (project_id) REFERENCES Projects(project_id) 
);
Desc Assignments;

INSERT INTO Employees7777 (employee_id, name, department, salary, 
hire_date) VALUES 
(1, 'Alice', 'IT', 60000, '2021-01-15'),
(2, 'Bob', 'HR', 45000, '2020-07-01'),
(3, 'Charlie', 'Finance', 50000, '2019-10-23'), 
(4, 'David', 'IT', 55000, '2018-05-16'),
(5, 'Alice', 'IT', 60000, '2021-01-15'),
(6, 'Bob', 'HR', 45000, '2020-07-01'),
(7, 'Charlie', 'Research', 60000, '2019-10-23'),
(8, 'David', 'Accounts', 57000, '2018-05-16'),
(9, 'Alice', ' Accounts ', 80000, '2021-01-15'),
(10, 'Bob', ' Research ', 55000, '2020-07-01'),
(11, 'Charlie', ' Research ', 40000, '2019-10-23'),
(12, 'David', ' Accounts ', 35000, '2018-05-16'),
(13, 'Alice', ' Accounts ', 20000, '2021-01-15'), 
(14, 'Bob', ' Research ', 15000, '2020-07-01'),
(15, 'Charlie', ' Research ', 70000, '2019-10-23'),
(16, 'David', ' Accounts ', 58000, '2018-05-16');

Select *from Employees777;

INSERT INTO Departments (department_id, department_name) VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');
Select *from Departments;

INSERT INTO Projects (project_id, project_name, department_id) 
VALUES 
(101, 'Website Upgrade', 1), 
(102, 'Employee Training', 2), 
(103, 'Budget Analysis', 3); 
Select *from Projects;

INSERT INTO Assignments (employee_id, project_id, hours_worked) VALUES 
(1, 101, 35), 
(2, 102, 20), 
(3, 103, 40), 
(4, 101, 45);
Select *from Assignments;
 
SELECT * FROM Employees777 WHERE department = 'IT'; 

SELECT name, hire_date FROM Employees777 WHERE hire_date > '2020-01-01'; 

SELECT project_name FROM Projects 
WHERE department_id = (SELECT department_id FROM Departments 
WHERE department_name = 'Finance');

SELECT AVG(salary) AS avg_salary FROM Employees777; 

SELECT MAX(salary) AS max_salary FROM Employees777 WHERE department = 'IT'; 

SELECT SUM(hours_worked) AS total_hours FROM Assignments;

SELECT department, COUNT(*) AS num_employees FROM Employees777 GROUP BY department;

SELECT project_id, SUM(hours_worked) AS total_hours FROM Assignments GROUP BY project_id;

SELECT department, AVG(salary) AS avg_salary FROM Employees777 GROUP BY department;

SELECT department, AVG(salary) AS avg_salary FROM Employees777 GROUP BY department HAVING AVG(salary) > 50000; 

SELECT project_id, SUM(hours_worked) AS total_hours FROM Assignments GROUP BY project_id HAVING SUM(hours_worked) > 30;



