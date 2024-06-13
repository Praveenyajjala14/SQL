-- Creating a new database

create database Instagram;
use Instagram;
show databases;

-- Creating a new Table

create table Accounts( username varchar(30), firstname char(30), posts int, country char(30));

-- Inserting a data into a table

INSERT INTO ACCOUNTS VALUES ("_UDAY123", "UDAY",30, "INDIA"),
("_RAJ123", "RAJ", 5, "INDIA"),
("_RAN123","RAN", 99, "INDIA"),
("_VISHNU123", "VISHNU", 25, "INDIA"), 
("_SIMBA123", "SIMBA", 54, "INDIA"),
("_MAHESH123", "MAHESH", 51, "INDIA"),
("_HANUMAN123", "HANUMAN",95,"INDIA"),
("_RAM123", "RAM", 9, "INDIA"),
("_DEV123", "DEV", 44, "US"),
("_MIKEE123", "MIKEE", 75, "US"),
("_JOHN123","JOHN", 50, "US"),
("_BARBIE123", "BARBIE", 1, "US");

create table Likes( username varchar(30), likes int, comments int);
INSERT INTO Likes VALUES ("_UDAY123", 232,126),
("_RAJ123", 523,361),
("_RAN123",138,66),
("_VISHNU123",354,88), 
("_SIMBA123", 255,82),
("_MAHESH123", 3541,35),
("_HANUMAN123",864,77 ),
("_RAM123", 311,65),
("_DEV123",14683,314 ),
("_MIKEE123",213,38 ),
("_JOHN123", 315135,351),
("_BARBIE123",658743,165 );

-- select, from, where functions

select * from Accounts;
select * from Likes;
select * from Likes where likes>1000 and Comments>100; 

update Likes set username="_MIKEE123" where username = "_MAHESH123";

-- Orderby Function

select * from Likes order by Username;

-- Groupby function, aggregate funtions, Having function

select count(username),count(firstname),avg(posts),min(posts), max(posts),sum(posts), country from Accounts group by country having country="INDIA" ;

-- Join Functions

create table Likes1( username varchar(30), likes int, comments int);
INSERT INTO Likes1 VALUES ("_UDAY123", 232,126),
("_RAJ123", 523,361),
("_RAN123",138,66),
("_VISHNU123",354,88), 
("_SIMBA123", 255,82),
("_MAHESH123", 3541,35),
("_HANUMAN123",864,77 );
INSERT INTO Likes1 VALUES ("_Pravdkf", 32,16);

-- Inner join

select * from Accounts inner join Likes1 on Accounts.username=Likes1.username;

-- Left Join

select * from Accounts left join Likes1 on Accounts.username=Likes1.username;

-- Right Join

select * from Accounts right join Likes1 on Accounts.username=Likes1.username;

-- Full Join

select * from Accounts left join Likes1 on Accounts.username=Likes1.username
union
select * from Accounts right join Likes1 on Accounts.username=Likes1.username;

-- Set Operators

create table Likes2( username varchar(30), likes int, comments int);
INSERT INTO Likes2 VALUES ("_UDAY123", 232,126),
("_RAJ123", 523,361),
("_RAN123",138,66),
("_VISHNU123",354,88);

create table Likes3( username varchar(30), likes int, comments int);
INSERT INTO Likes3 VALUES ("_UDAY123", 232,126),
("_RAN123",138,66),
("_slrihf",3535,23);
select * from Likes2;
select * from Likes3;

-- Union operator

select * from Likes2 where likes>200
union
select * from Likes3 where Likes>100;

-- Union all Operator

select * from Likes2 where likes>200
union all
select * from Likes3 where Likes>100;

-- Intersect Operator

select * from Likes2
intersect
select * from Likes3;

-- except operator

select * from Likes2
except
select * from Likes3;

-- Sub Query

select (select username from Likes where Accounts.username=Likes.Username) from Accounts where posts=99;


-- Commands
-- DDL, DML, DCL, TCL, DQL
-- Data Definition Language(create,alter, drop,truncate)

create database Courses;
use Courses;
Create table Courses(cid varchar(30), cname char(30), cfee int);
insert into Courses values ("c101", "AIML", 20000), ("c102", "FULL STACK", 25000),
("c103","ANDRIOD",15000);

select * from Courses;

alter table Courses add column(crating int);
alter table Courses modify crating float;
ALTER TABLE Courses drop crating;
alter table Courses rename column cfee to fee;

truncate table Courses;

drop table Course;

-- Data manipulation Language(insert, update,delete )

use Courses;
Create table Course(cid varchar(30) primary key, cname char(30), cfee int);

insert into Course values ("c101", "AIML", 20000), ("c102", "FULL STACK", 25000),
("c103","ANDRIOD",15000);

select * from Course;

update Course set cname="Android Developer" where cid="c103";

delete from Course where cfee>20000;

-- Data Control Language(Grant, Revoke)

select * from MYSQL.user;
create user praveen@localhost identified by "1234567890";

Grant all privileges on *.* to praveen@localhost;

Revoke all privileges on *.* from praveen@localhost;

-- Primary Key 

use courses;
CREATE TABLE Persons (
    Personid int primary key AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
drop table students;

insert into Persons(LastName,FirstName,Age) values("prkhdf","sjf",45);
insert into Persons(LastName,FirstName,Age) values("prkhdf","sjf",45);
select * from Persons;

CREATE TABLE Students(
Student_ID int  PRIMARY KEY, 
First_Name varchar(255),
Last_Name varchar(255)
);
INSERT INTO Students VALUES (101,'Deeksha', 'Jain');

INSERT INTO Students  VALUES ('Kavisha', 'Parikh'); 
select * from Students;


