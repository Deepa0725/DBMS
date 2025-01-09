ALTER TABLE employees1 ADD COLUMN phone_number 
VARCHAR(15); 
desc employees1;

ALTER TABLE employees1 MODIFY COLUMN salary DECIMAL(12, 2); 
desc employees1;
select *from employees1;

ALTER TABLE employees1 DROP COLUMN phone_number; 
select *from employees1;

ALTER TABLE employees1 CHANGE COLUMN name full_name VARCHAR(100);

TRUNCATE TABLE employees1; 
select *from employees1;

RENAME TABLE employees1 TO staff;
SHOW TABLES;

DROP TABLE staff;
SHOW TABLES; 
