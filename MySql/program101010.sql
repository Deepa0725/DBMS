CREATE VIEW HighSalaryEmployees AS 
SELECT EmpName, Salary 
FROM Employees 
WHERE Salary > 60000; 

DROP VIEW IF EXISTS HighSalaryEmployees; 

SELECT * FROM HighSalaryEmployees;
