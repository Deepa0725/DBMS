show databases;
use mysql;
show tables;
create table persons
(personid int,
firstname varchar(255),
lastname varchar(255),
city varchar(255));
select *from persons;
insert into persons 
values(1, 'Deepa', 'Devaraj','Bangalore');
select *from persons;