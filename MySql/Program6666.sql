CREATE DATABASE Program;
SHOW DATABASES; 

CREATE TABLE Departments ( 
DeptID INT PRIMARY KEY, 
DeptName VARCHAR(50) 
); 
desc Departments;

CREATE TABLE Employees ( 
EmpID INT PRIMARY KEY, 
EmpName VARCHAR(50), 
Salary DECIMAL(10, 2), 
DeptID INT, 
DOB DATE, 
FOREIGN KEY (DeptID) REFERENCES Departments(DeptID) 
); 
desc Employees;

CREATE TABLE Projects ( 
ProjectID INT PRIMARY KEY, 
ProjectName VARCHAR(50) 
); 
desc Projects;

CREATE TABLE Employee_Project ( 
EmpID INT, 
ProjectID INT, 
PRIMARY KEY (EmpID, ProjectID), 
FOREIGN KEY (EmpID) REFERENCES Employees(EmpID), 
FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID) 
);
desc Employee_Project;

INSERT INTO Departments (DeptID, DeptName) VALUES 
(1, 'Research'), 
(2, 'Accounts'), 
(3, 'HR'), 
(4, 'IT'), 
(5, 'Sales'); 
Select *from Departments;

INSERT INTO Employees (EmpID, EmpName, Salary, DeptID, DOB) VALUES 
(1, 'Alice', 50000, 1, '1990-01-12'), 
(2, 'Bob', 60000, 2, '1999-02-23'), 
(3, 'Charlie', 55000, 2, '1990-03-20'), 
(4, 'David', 45000, 3, '1999-04-15'), 
(5, 'Eve', 40000, 1, '1990-05-16'), 
(6, 'Frank', 70000, 5, '1999-06-17'), 
(7, 'Grace', 80000, 1, '1998-07-18'), 
(8, 'Heidi', 65000, 2, '1997-08-19'), 
(9, 'Ivan', 30000, 4, '2000-09-23'), 
(10, 'Judy', 90000, 5, '2001-08-2'), 
(11, 'Judy', 90000, 5, '2005-09-3'), 
(12, 'Judy', 100000, 5, '2004-10-4'), 
(13, 'Judy', 200000, 5, '2003-11-5'), 
(14, 'Judy', 300000, 5, '2002-12-6');
Select *from Employees;

INSERT INTO Projects (ProjectID, ProjectName) VALUES 
(1, 'Project A'), 
(2, 'Project B'), 
(3, 'Project C'); 
Select *from Projects;

INSERT INTO Employee_Project (EmpID, ProjectID) VALUES 
(1, 1), 
(1, 2), 
(2, 1), 
(3, 1), 
(4, 2), 
(5, 3), 
(6, 2), 
(7, 3), 
(8, 1);
Select *from Employee_Project;
 
SELECT e.EmpName 
FROM employees e 
WHERE EXISTS ( 
SELECT 1 
FROM departments d 
WHERE d.DeptID = e.DeptID 
AND d.DeptID = 5 
); 

SELECT d.DeptName, COUNT(e.EmpID) AS employee_count 
FROM departments d 
JOIN employees e ON d.DeptID = e.DeptID 
GROUP BY d.DeptName 
HAVING COUNT(e.EmpID) >= 2;
