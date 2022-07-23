-- constraints 
create database db5;
use db5;

create table studentdetails(
ID int unique,
Lastname varchar (20),
firstname varchar (20),
doj date not null,
age int,
city varchar(20) default 'surat',
check (age>=18)
);
-- date values have YYYY-MM-DD
insert into studentdetails values (3,'paula','aarna','2022-02-02',20,default);
-- bulk
insert into studentdetails (ID,Lastname,firstname,doj,age)
values
(1,'desai','krishna','1997-05-10',18),
(2,'desai','krishna','1997-05-10',18);
select count(*) as surat_count;
 select * from studentdetails;
 select distinct city from studentdetails;
 
 -- BETWEEN #RANGE
 SELECT * FROM STUDENTDETAILS
 WHERE AGE BETWEEN 20 AND 25;
 
 SELECT * FROM STUDENTDETAILS;
 SELECT LASTNAME,FIRSTNAME,CITY FROM STUDENTDETAILS WHERE CITY = SURAT ;
 
 SELECT * FROM STUDENTDETAILS
 WHERE FIRSTNAME LIKE  "A% A";
 
 SELECT * FROM STUDENTDETAILS
 WHERE FIRSTNAME LIKE  "A%";
 
 SELECT * FROM STUDENTDETAILS
 WHERE FIRSTNAME LIKE  "% A";
 
 SELECT * FROM STUDENTDETAILS
 WHERE FIRSTNAME LIKE  "% A%";
 COMMIT;
 
 
 



