SELECT Bookname  
FROM BOOK 
ORDER BY Bookname DESC; 


 
SELECT S.USN, S.Name, BK.Bookname, BK.Publisher 
FROM STUDENT S 
JOIN BORROW BO ON S.USN = BO.USN 
JOIN BOOK BK ON BO.Bookid = BK.Bookid 
WHERE BK.Publisher = 'PublisherName'; 