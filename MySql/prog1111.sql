SHOW DATABASES; 
CREATE DATABASE libraryDB; 
SHOW DATABASES; 
USE libraryDB; 

CREATE TABLE BRANCH ( 
Branchid INT PRIMARY KEY, 
Branchname VARCHAR(50), 
HOD VARCHAR(50) 
); 
desc branch;

CREATE TABLE STUDENT ( 
USN VARCHAR(10) PRIMARY KEY, 
Name VARCHAR(50), 
Address VARCHAR(100), 
Branchid INT, 
Sem INT, 
FOREIGN KEY (Branchid) REFERENCES BRANCH(Branchid) 
); 
desc student;

CREATE TABLE AUTHOR ( 
Authorid INT PRIMARY KEY, 
Authorname VARCHAR(50), 
Country VARCHAR(50), 
Age INT 
); 
desc author;

CREATE TABLE BOOK ( 
Bookid INT PRIMARY KEY, 
Bookname VARCHAR(100), 
Authorid INT, 
Publisher VARCHAR(50), 
Branchid INT, 
FOREIGN KEY (Branchid) REFERENCES BRANCH(Branchid), 
FOREIGN KEY (Authorid) REFERENCES AUTHOR(Authorid) 
); 
desc book;

CREATE TABLE BORROW ( 
USN VARCHAR(10), 
Bookid INT, 
Borrowed_Date DATE, 
PRIMARY KEY (USN, Bookid), 
FOREIGN KEY (USN) REFERENCES STUDENT(USN), 
FOREIGN KEY (Bookid) REFERENCES BOOK(Bookid)); 
desc borrow;

INSERT INTO BRANCH (Branchid, Branchname, HOD) VALUES 
(1, 'MCA', 'Dr. Smith'), 
(2, 'MBA', 'Dr. Johnson'), 
(3, 'BCA', 'Dr. Williams'), 
(4, 'BBA', 'Dr. Brown'), 
(5, 'B.Tech', 'Dr. Taylor'); 
select *from branch;

INSERT INTO STUDENT (USN, Name, Address, Branchid, Sem) 
VALUES 
('1RV18MCA01', 'Sam Smith', 'Bangalore', 1, 2), 
('1RV18MCA02', 'Sara Connor', 'Mysore', 1, 2), 
('1RV18MBA01', 'John Doe', 'Mangalore', 2, 1), 
('1RV18BCA01', 'Alice Cooper', 'Hubli', 3, 3), 
('1RV18BBA01', 'Tom Hanks', 'Dharwad', 4, 1); 
select *from student;

INSERT INTO AUTHOR (Authorid, Authorname, Country, Age) 
VALUES  
(1, 'Alice Adams', 'USA', 35), 
(2, 'Bob Brown', 'UK', 40), 
(3, 'Charlie Chaplin', 'Canada', 50), 
(4, 'Diana Prince', 'USA', 30), 
(5, 'Ethan Hunt', 'Australia', 45); 
select *from author;
 
INSERT INTO BOOK (Bookid, Bookname, Authorid, Publisher, 
Branchid) VALUES 
(1, 'Database Management', 1, 'TechBooks', 1), 
(2, 'Business Strategy', 2, 'MarketBooks', 2), 
(3, 'Programming 101', 3, 'CodePublishers', 3), 
(4, 'Marketing Basics', 4, 'AdBooks', 4), 
(5, 'Engineering Fundamentals', 5, 'EduBooks', 5); 
select *from book;

INSERT INTO BORROW (USN, Bookid, Borrowed_Date) VALUES 
('1RV18MCA01', 1, '2024-01-15'), 
('1RV18MCA01', 2, '2024-01-15'), 
('1RV18MCA01', 3, '2024-02-20'), 
('1RV18MCA02', 2, '2024-01-10'), 
('1RV18MBA01', 4, '2024-02-25'), 
('1RV18BCA01', 5, '2024-03-05');
select *from borrow;

INSERT INTO STUDENT (USN, Name, Address, Branchid, Sem)  
VALUES ('1RV18MCA03', 'John Doe', 'Bangalore', 1, 2); 
select *from student;

UPDATE STUDENT  
SET Name = 'Jane Doe' WHERE USN = '1RV18MCA01'; 
select *from student;

DELETE FROM STUDENT WHERE USN = '1RV18MCA03'; 
select *from student;

COMMIT; 

ROLLBACK; 