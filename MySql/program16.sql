create database hello;

CREATE TABLE STUDENT ( 
USN VARCHAR(10) PRIMARY KEY, 
Name VARCHAR(50), 
Date_of_Birth DATE, 
Branch VARCHAR(50), 
Mark1 INT, 
Mark2 INT, 
Mark3 INT, 
Total INT, 
GPA DECIMAL(4, 2) 
); 
desc student;

INSERT INTO STUDENT (USN, Name, Date_of_Birth, Branch, 
Mark1, Mark2, Mark3, Total, GPA)  
VALUES ('1RV18MCA01', 'John Doe', '2000-04-15', 'MCA', 85, 90, 
88, 263, 9.1), 
('1RV18MCA02', 'Jane Smith', '1999-12-20', 'MCA', 80, 82, 78, 
240, 8.5), 
('1RV18CSE01', 'Alice Johnson', '2001-01-10', 'CSE', 75, 85, 
80, 240, 8.0), 
('1RV18CSE02', 'Bob Brown', '2000-06-25', 'CSE', 88, 89, 90, 
267, 9.2), 
('1RV18ECE01', 'Charlie Davis', '2001-03-05', 'ECE', 70, 75, 
80, 225, 7.5), 
('1RV18ECE02', 'David Wilson', '1999-09-17', 'ECE', 65, 72, 
70, 207, 7.0), 
('1RV18ME01', 'Emma Thomas', '2000-11-01', 'ME', 78, 80, 82, 
240, 8.3), 
('1RV18ME02', 'Frank Martin', '2000-02-12', 'ME', 82, 85, 87, 
254, 8.7), 
('1RV18EEE01', 'Grace Lee', '1999-08-08', 'EEE', 77, 79, 76, 
232, 8.1), 
('1RV18MCA11', 'SJohn Doe', '2000-04-15', 'MCA', 85, 90, 88, 263, 
9.1), 
('1RV18MCA12', 'SJohn Doear', '2000-04-15', 'MCA', 85, 90, 88, 
263, 9.1), 
('1001', 'SJohn Doear', '2000-04-15', 'MCA', 85, 90, 88, 263, 9.1), 
('1RV18EEE02', 'Hannah White', '2000-07-23', 'EEE', 90, 88, 
85, 263, 9.0);
select *from student;