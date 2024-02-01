/* delete databse if already exists */
Drop database if Exists `employee_DBMS`;

/* create database employee_DBMS */
create database employee_DBMS;

/* use database employee_DBMS */
use employee_DBMS;

/*delete table if exists*/
drop table if Exists `emp_details`;

/* creating table emp_Details */
create table emp_details(id int, name varchar(50), department varchar(50), salary int);

/*renaming table (two different ways)*/
alter table emp_details rename to employee_Details;
rename table employee_Details to emp_details;

/* inserting values in emp_Details table */
insert into emp_details values (1,"Aman","IT ", 100000);
insert into emp_details values (2,"Brinda" , "HR", 80000);
insert into emp_details values (3, "Chinamayi" , "IT", 120000);
insert into emp_details values (4, "Deepak", "Admin", 90000);
insert into emp_details values (5, "Ekta", "HR", 75000);
insert into emp_details values (6, "Himanshu", "Customer Support", 60000);
insert into emp_details(id,name,department,salary) values (7,"ganga","IT",125000);

/* displaying all the values in table */
select * from emp_details;
select name from emp_details;

/* updating values in table */
update emp_details set name = "Ranbir" where id =3;
select * from emp_details;


insert into emp_details values (8, "random", "random", 60000);
select * from emp_details;

/* deleting values in table */
delete from emp_details where id = 8;
select * from emp_details;