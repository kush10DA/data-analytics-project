create database db3;
use db3;

CREATE TABLE User (
   Firstname VARCHAR(20) NOT NULL,
   Lastname VARCHAR(20) NOT NULL,
   Address VARCHAR(20) NOT NULL ,
   City VARCHAR(20) NOT NULL,
   Age NUMERIC NOT NULL
);
insert into User Values
('Mickey','Mouse','123 Fantasy way','Anaheim',73),
('Bat','Man','321 cavern Ave','Gotham',54),
('Wonder','Women','987 Truth Way','Paradise',39),
('Donald','Duck','555 Quack Street','Mallard',65),
('Bugs','Bunny','567 carrot Street','Rascal',58),
('Wiley','Coyote','999 Acme Way','Canyon',61),
('cat','Woman','234 Puurfect','Hairball',32),
('Tweety','Bird',543,'Itotlaw',28);

create table Student( 
Rollno numeric, 
Name varchar(10),
Branch varchar(20),
primary key(Rollno)
);
create table Exam( 
Rollno numeric,
S_code varchar(10),
Marks numeric(20),
P_code varchar(10),
foreign key (Rollno) references Student(Rollno)
);
insert into Student values (1,'Jay','Computer Science');
insert into Student values (2,'Suhani','Computer Science');
insert into Student values (3,'Kriti','Computer Science');

insert into Exam values (1,'CS11',50,'CS');
insert into Exam values (1,'CS12',60,'CS');
insert into Exam values (2,'EC101',66,'EC');
insert into Exam values (2,'EC102',70,'EC');
insert into Exam values (3,'EC101',45,'EC');
insert into Exam values (3,'EC102',50,'ES');

select * from user;
select * from Student;
select * from Exam;

COMMIT;


-- What is save Point How to Create a save Point write a Query ?
 Savepoint is a command in SQL that is used with the rollback command.It is a command in Transaction Control Language that is used to mark the transaction in a table.

-- What is SQL Key Constraints write an Example of SQL Key Constraints ?
-- BETWEEN #RANGE
 SELECT * FROM exam
 WHERE marks BETWEEN 50 AND 70 ;
 
 -- What is SQL View Create a View of Student Table ?
 
 create view user_students as
 select firstname,lastname, city,age
 from user;
 
 select * from user_students;
 
 -- What is store Proceedure write a query of creating store Proceedure ?
 
  A stored procedure is a pre-written SQL query that can be called multiple times and will run as the same.
 Like we can create a Stored procedure for Insert, select, update in SQL database.
We can also pass parameters to the Stored procedures.


 delimiter //
create procedure p1()
begin
select * from user;
end ; //

-- calling the stored procedure
call p1();
commit;

-- What is trigger and how to Create a Trigger in SQL ?
 drop trigger before_insert_exam
delimiter //
create trigger before_insert_exam
before insert on exam for each row
begin
if new.marks < 50 then set new.marks = 50;
end if;
end ; //
insert into exam
values (3,'EC101',45,'EC');
select *from exam

--  What do you understood By Database ?
A database (DB), in the most general sense, is an organized collection of data.
 More specifically, a database is an electronic system that allows data to be easily accessed, manipulated and updated.

-- What is Difference Between DBMS and RDBMS ?
DBMS stores data as a file whereas in RDBMS, data is stored in the form of tables.
DBMS supports single users, while RDBMS supports multiple users.
DBMS does not support client-server architecture but RDBMS supports client-server architecture.
DBMS has low software and hardware requirements whereas RDBMS has higher hardware and software requirements.
 
 --  What do you understood By Data Redundancy ?
 Data redundancy occurs when the same piece of data is stored in two or more separate places.
 Suppose you create a database to store sales records, and in the records for each sale, you enter the customer address. Yet, you have multiple sales to the same customer so the same address is entered multiple times.
 The address that is repeatedly entered is redundant data.
 
 -- What is Normalization ?
Database normalization is a database schema design technique, by which an existing schema is modified to minimize redundancy and dependency of data. 
Normalization split a large table into smaller tables and define relationships between them to increases the clarity in organizing data.

-- What is DDL Interpreter ?
DDL Interpreter – It processes the DDL statements into a set of table containing meta data 

--  What is DML Compiler in SQL ?
The DML commands in Structured Query Language change the data present in the SQL database.
 We can easily access, store, modify, update and delete the existing records from the database using DML commands
 
 -- What is Database transaction ?
 Transactions are units or sequences of work accomplished in a logical order, whether in a manual fashion by a user or automatically by some sort of a database program.
 A transaction is the propagation of one or more changes to the database.
 
 -- -- What is Store Procedure in Database ?
 A stored procedure is a series of SQL statements compiled and saved to the database.
Stored procedures can be as simple or as complex as you like.
 However, one of the benefits of stored procedures is that they allow you to store complex scripts on the server.
 
 -- What is MF Codd Rule of RDBMS Systems ?
 Codd’s rule describes what exceptional a DBMS requires to emerge a Relational Database Management System (RDBMS). A relational database management system must handle the database entirely through its relational capabilities.
 All data in a relational database, including table names, column names are defined logically through values in tables
 
 -- What do You understood by Data Independence in Database?
  A database system normally contains a lot of data in addition to users’ data. 
  For example, it stores data about data, known as metadata, to locate and retrieve data easily. 
  It is rather difficult to modify or update a set of metadata once it is stored in the database.
  But as a DBMS expands, it needs to change over time to satisfy the requirements of the users. 
  If the entire data is dependent, it would become a tedious and highly complex job.
  
  -- What are the name of the different data models that are available for 
database systems ?

  The Database models in the Database Management System explains the logic behind the structure of a Database system that should usually include all the tables, which are represented as entities in ER model, the relationships between the tables and objects, and the requirement provided by the project team in order to settle on how data can be stored & accessed, granted the aimed Database System needs to be designed with respect to the rules and notions of the given data model the Database Architect prefers to be implemented.