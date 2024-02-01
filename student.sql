 use college;
 create table student (
 id INT primary key, name varchar(50), age int not null
 );

insert into student Values(1,"Addy",25);
insert into student Values(2,"Raj",55);
insert into student Values(3,"Sam",35);
insert into student Values(4,"Ram",32);

select * from student;

create database if not exists college;

drop database if exists x1;

show databases;

show tables;

drop table student;

create table student(
 roll int primary key,
 name varchar(50)
);
show tables;
select * from student;

insert into student
(roll, name)
values
(101,"Addy"),
(102,"Ram"),
(103,"Sham");

select *  from student;


insert into student
(roll, name)
values
(104,"Jay");

insert into student values(105,"Ron");

create database xyz;
use xyz;
create table employee(
id int Primary key, name varchar(50), salary int
);

insert into employee
(id,name,salary)
values
(1,"Adam",76000),
(2,"Addy",64000),
(3,"Ram",69000),
(4,"Sham",46000),
(5,"Sam",66000);

select * from employee;
drop table employee;

create table temp1(
id int unique
);
insert into temp1 values(101);
insert into temp1 values(101);

select * from temp1;

create table temp2(
id int,
name varchar(40),
age int,
city varchar(40),
primary key (id,name)
);

select * from temp2;
insert into temp2
(id,name,age,city)
values
(1,"Maddy",32,"Jalandhar"),
(2,"Jady",25,"Newyork"),
(3,"Jay",24,"Pune"),
(4,"Ray",24,"Jharkhand");

select * from temp2;

create table emp(
id int,
salary int default 25000);

insert into emp(id) values(101);
select * from emp;


create database students;
use students;
drop table student;
create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(4),
    city varchar(10)
);

select * from student;
insert into student
(rollno, name, marks, grade, city)
values
(1,"Ram",88,"A","Newyork"),
(2,"Sham",34,"D","Houston"),
(3,"Dam",68,"C","Buffalo"),
(4,"Sam",79,"B","Queens"),
(5,"Addy",91,"A","Jalandhar");
insert into student
(rollno, name, marks, grade, city)
values
(6,"Josh",43,"D","Buffalo");

select name, marks from student;
select distinct city from student;

SELECT * FROM student where marks>80; 
select * from student

SELECT * FROM student
where marks = 43 and city = "Buffalo";


SELECT * FROM student
where marks = 43 or city = "Newyrok";


SELECT * FROM student
where marks between 70 and 95;


SELECT * FROM student
where city in ("Newyork","Houston","Delhi");


SELECT * FROM student
where city not in ("Newyork","Bihar","Delhi");

select  * from student 
where marks > 71
limit 2;

select * from student 
order by city ASC;

SELECT * FROM student 
order by city DESC;

select * from student 
order by marks desc 
limit 2;

select max(marks)
from student;

select avg(marks)
from student;

select min(marks)
from student;

select count(name)
from student;

select sum(marks)
from student;

select city, count(name)
from student 
group by city ;

select city, name, count(name)
from student
group by city,name;

select city, avg(marks)
from student
group by city
order by city;

select city, avg(marks)
from student
group by city 
order by avg(marks);
create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(4),
    city varchar(10)
);

select * from student;
insert into student
(id, name, marks, grade, city)
values
(1,"Ram",88,"A","Newyork"),
(2,"Sham",34,"D","Houston"),
(3,"Dam",68,"C","Buffalo"),
(4,"Sam",79,"B","Queens"),
(5,"Addy",91,"A","Jalandhar");
insert into student
(rollno, name, marks, grade, city)
values
(6,"Josh",43,"D","Buffalo");

create table payments(
cust_id int primary key ,
customer varchar(50),
mode_pymt varchar(20),
city varchar(15),
price int
);
select * from payments;
insert into payments
(cust_id, customer, mode_pymt, city, price)
VALUES 
(101,"Olive Bhatt","Netbanking","Pune",12000),
(102,"Ethan Sinclair","Credit Card","Mumbai",34000),
(103,"Maya Rogers","Credit Card","Delhi",1500),
(104,"Liam Donovan","Netbanking","Jaipur",16000),
(105,"Ava Patel","Debit Card","Kota",16420),
(106,"Caleb Foster","Debit Card","Mumbai",17800);

select mode_pymt, count(customer)
from payments
group by mode_pymt;

select grade, count(grade)
from student 
group by grade
order by grade;

select city, count(name)
from student 
group by city 
having max(marks)>90;


select city, count(rollno)
from student 
group by city 
having max(marks)>70
order by city ASC;
set SQL_SAFE_UPDATES = 0;

Update student 
set grade = "O"
where grade = "A";
SELECT * FROM  student;
update student 
set grade = "E"
where marks BETWEEN 50 AND 70;

update student 
set marks = marks +1;

SELECT * FROM  student;

delete from student 
where marks ="35";

CREATE TABLE dept(
 id int primary key,
 name varchar(40)
 );
 insert into dept
 values
 (101,"English"),
 (102,"IT");
 select * from dept;
 
 create table teacher(
 id int primary key,
 name varchar(40),
 dept_id int,
 foreign key (dept_id) references dept(id)
 on update cascade
 on delete cascade
 );
 select * from teacher;

insert into teacher
values
(101,"Adam",101),
(102,"Eve",102); 
 
Drop table teacher;
 select * from teacher;
 
 update dept
 set id= 103
 where id = 102;
 
 select * from dept;
 select * from teacher;
 
 
 select  * from student;
 
 
 alter table student 
 add column age int not null default 19 ;
 
 alter table student
 drop column age;
 
 alter table student 
 change column rollno id int not null;
 
 alter table student 
 modify age varchar(2);
 alter table student
 change age stu_age int;
 
 insert into student
 (id,name,marks,grade,city,stu_age)
 values
 (7,"Ranu",76,"B","Queens",100)
 
 
 select * from student;
 order by stu_age DESC;
 
 
 
truncate table student;

alter table student
change column name full_name varchar(50);

delete from student 
where marks < 60;

alter table student 
drop column stu_age;
use college;
create table stud(
stud_id int primary key,
name varchar(20)
);
select * from stud;
insert into stud(stud_id,name)
values
(101,"Rakesh"),
(102,"Surey"),
(103,"Harsh");

create table course(
stud_id int primary key,
name varchar(30)
);
select * from course;
insert into course(stud_id,name)
values
(102,"English"),
(103,"Maths"),
(104,"Science"),
(105,"Computer"),
(108,"SST");

select * 
from stud as s
inner join course as c
on s.stud_id = c.stud_id;

select * from stud as s
left join course as c
on s.stud_id=c.stud_id;

select * from stud as s
right join course as c
on s.stud_id=c.stud_id;

select * from stud as s
left join course as c
on s.stud_id=c.stud_id
union
select * from stud as s
right join course as c
on s.stud_id=c.stud_id;

select * from stud as s
left join course as c
on s.stud_id=c.stud_id
where c.stud_id IS NULL;

select * from stud as s
right join course as c
on s.stud_id=c.stud_id
where s.stud_id IS NULL;

select s.name as manager_name, c.name
from stud as s
join stud as c
on s.stud_id=c.stud_id;



create table employee(
id int primary key,
name varchar(40),
manager_id INT
);

insert into employee(id, name, manager_id)
values
(101,"Akasha",103),
(102,"Suresh",104),
(103,"Ram",103),
(104,"Namo",null);
drop table employee;
select * from employee;


select name from employee
union 
select name from employee;

select name from employee
union all
select name from employee;

create table result(
	rollno int primary key,
    name varchar(40),
    marks int NOt Null,
    grade Varchar(10),
    city Varchar(10)
    );

insert into result(rollno, name, marks, grade, city)
values
(101, "Surmesh",78,"C","Panaji"),
(102, "Dildeepak",83,"B-","Mumbai"),
(103, "Ramesh",88,"B","Jehrusalem"),
(104, "Sandy",98,"A","Goa"),
(105, "Josh",92,"A-","Miami"),
(106, "Rahul",68,"D","Newyork");
SELECT * FROM result;
insert into result(rollno, name, marks, grade, city)
values
(108, "Anam",79,"C","Newyork");

select avg(marks)
from result;

select name
from result
where marks> 84.5000;

select name, marks
from result
where marks > (select avg(marks) from result);

select rollno
from result
where rollno%2 = 0;

select name, rollno
from result
where rollno in (102,104,106);

select name, rollno
from result
where rollno in (select rollno from result where rollno%2 = 0);

select max(marks)
from (Select * from result where city ="Newyork") As temp;

select (select max(marks) from result), name
from result;

create View View1 as 
select rollno,name,marks from result;
select * from View1
where marks > 90;

drop view view1;


-----------------Complete-------------------