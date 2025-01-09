UPDATE employees777 SET salary = salary * 1.10 WHERE department = 'Research'; 
Select *from Employees777;

SELECT 
SUM(salary) AS total_salary, 
MAX(salary) AS max_salary, 
MIN(salary) AS min_salary, 
AVG(salary) AS average_salary 
FROM employees777
WHERE department = 'Accounts' AND salary IS NOT NULL; 