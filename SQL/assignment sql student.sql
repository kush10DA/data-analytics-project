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
Marks numeric,
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

-- What is store Proceedure write a query of creating store Proceedure ?
--  A stored procedure is a pre-written SQL query that can be called multiple times and will run as the same.
-- Like we can create a Stored procedure for Insert, select, update in SQL database.
-- We can also pass parameters to the Stored procedures.


-- What is save Point How to Create a save Point write a Query ?



