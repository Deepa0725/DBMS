SELECT S.USN, S.Name, B.Branchname, BK.Bookname, 
A.Authorname, BO.Borrowed_Date  
FROM STUDENT S 
JOIN BRANCH B ON S.Branchid = B.Branchid 
JOIN BORROW BO ON S.USN = BO.USN 
JOIN BOOK BK ON BO.Bookid = BK.Bookid 
JOIN AUTHOR A ON BK.Authorid = A.Authorid 
WHERE S.Sem = 2 AND B.Branchname = 'MCA'; 



SELECT A.Authorname, COUNT(BK.Bookid) AS NumBooks  
FROM AUTHOR A 
JOIN BOOK BK ON A.Authorid = BK.Authorid 
GROUP BY A.Authorname; 
























































SELECT A.Authorname, COUNT(BK.Bookid) AS NumBooks  
FROM AUTHOR A 
JOIN BOOK BK ON A.Authorid = BK.Authorid 
GROUP BY A.Authorname; 
