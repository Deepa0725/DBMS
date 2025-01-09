SELECT p.ProjectID, p.ProjectName, COUNT(EmpID) AS NumberOfEmployees 
FROM Projects p 
JOIN Employee_Project ep ON p.ProjectID = ep.ProjectID 
GROUP BY ProjectID, ProjectName 
HAVING COUNT(EmpID) > 2; 
