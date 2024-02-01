create database studentDatabase;
use studentDatabase;

drop table if exists `Address`;
/* creating table address*/
create table Address(
                  Student_Address_Id int primary key, 
                  city varchar(50), 
                  state varchar(50)
);

drop table if exists `Student`;
/* creating table student*/
CREATE TABLE Student (
    Student_Id int primary key,
    Student_Name varchar(50),
    Student_Marks float,
    Student_Aadhaar_No bigint,
    Student_Address_Id int,
    FOREIGN KEY (Student_Address_Id) REFERENCES Address(Student_Address_Id)
);


/* inserting values in address table*/
insert into address values(1,"noida", "Uttar Pradesh");
insert into address values(2,"Roorkee","Uttarakhand");
insert into address values(3,"Kolkata", "West Bengal");
insert into address values(4, "Jaipur", "Rajasthan");
insert into address values(5, "Bhubaneswar", "Odisha");
insert into address values(6, "Madurai","Tamil Nadu");
insert into address values(7, "Bangalore", "Karnataka");
insert into address values(8,"Lucknow", "Uttar Pradesh");
insert into address values (9, "Mysuru" , "Karnataka");
insert into address values(10, "Haridwar", "Uttarakhand");
select * from address;

/* inserting values in student table*/
insert into Student values(1,"Amandeep",98,9854856978541253,3);
insert into Student values(2,"Bobby",88,9858459978541253,2);
insert into Student values(3,"Bhavesh",100,8874856978541253,7);
insert into Student values(4,"Candy",50,8874856971548253,7);
insert into Student values(5,"Deepak",20,8898536978541253,7);
insert into Student values(6,"Hooper",34,8874856978584160,5);
insert into Student values(7,"Nitika",100,8877756978541253,1);
insert into Student values(8,"Kiran",90,8874852228541253,6);
insert into Student values(9,"Zubair",49,7776552228541253,5);
insert into Student values(10,"Tariq",70,8874853334541253,4);
select * from student;

/*group by clause*/
select state,count(city) from address group by state;

/*having clause*/
select state,count(city) from address group by state having count(city)>1;

/*order by clause*/
select  Student_Name ,Student_Marks from Student order by Student_Marks desc;

/*And condition*/
select Student_Name,Student_Marks  from Student where Student_Address_Id = 7 and Student_Marks>=50;

/*Or condition*/
select Student_Name,Student_Marks  from Student where Student_Address_Id = 6 or Student_Marks>=70;

/*NOT condition*/
select Student_Name,Student_Marks  from Student where NOT Student_Address_Id = 6 And not Student_Marks>=70;

/*LIKE condition*/
select Student_Name,Student_Marks  from Student where Student_Name LIKE 'H%' or Student_Name LIKE 'B%' ;

Select AVG(Student_Marks) from Student where Student_Address_Id = 7;
Select AVG(Student_Marks) from Student;
