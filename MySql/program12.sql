SELECT * FROM STUDENT  
WHERE Sem = 2 AND Branchid = (SELECT Branchid FROM   
BRANCH WHERE Branchname = 'MCA'); 




SELECT * FROM STUDENT  
WHERE USN NOT IN (SELECT USN FROM BORROW); 

