SELECT DeptID, COUNT(EmpID) AS NumberOfEmployees 
FROM Employees 
WHERE Salary > 40000 
GROUP BY DeptID 
HAVING COUNT(EmpID) > 5;
