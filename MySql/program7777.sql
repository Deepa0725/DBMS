SELECT p.ProjectID,  
p.ProjectName, 
COUNT(ep.EmpID) AS NumberOfEmployees 
FROM Projects p 
LEFT JOIN Employee_Project ep ON p.ProjectID = ep.ProjectID 
GROUP BY p.ProjectID, p.ProjectName; 

SELECT EmpName 
FROM Employees 
WHERE YEAR(DOB) BETWEEN 1990 AND 1999;
