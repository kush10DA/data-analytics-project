create database db9;
use db9;

   create table SALESPERSON (
   SNO NUMERIC,
   SNAME VARCHAR(20),
   City VARCHAR(20),
   COMM DOUBLE,
   PRIMARY key (SNo )
   );
   INSERT INTO SALESPERSON (SNO,SNAME,City,COMM)
   VALUES
   (1001,'PEEL','LONDON',.12),
   (1002,'SERRES','SAN JOSE',.13),
   (1004,'RAFLIN','BARCELONA',.15),
   (1007,'MOTIKA','LONDON',.11),
   (1003,'AXE','NEYYORK',.1);
   
create table CUSTOMER ( 
CNM NUMERIC,
CNAME varchar (20),
CITY VARCHAR (20),
RATING NUMERIC,
SNO NUMERIC,
PRIMARY KEY (CNM),
FOREIGN KEY (SNO) references SALESPERSON(SNO)
);

INSERT INTO CUSTOMER  (CNM,CNAME,CITY,RATING,SNO)
VALUES

(201,'HOFF','LONDON',100,1001),
(202 ,'GLOVA','ROE',200,1003),
(203,'LIU','SAN JOSE',300,1002),
(204,'GRASS','BARCELONA',100,1002),
(206,'CLEMENS','LONDON',300,1007),
(207,'PEREIRA','ROE',100,1004);

create table ORDER1 ( 
ONM NUMERIC,
AMT DOUBLE,
ODE DATE,
CNM NUMERIC,
SNO NUMERIC,
PRIMARY KEY (ONM),
FOREIGN KEY (SNO) references SALESPERSON (SNO) 
);
 
 
 INSERT INTO ORDER1  (ONM,AMT,ODE,CNM,SNO)
 VALUES
(3001,  18.69,   "1994-8-3",  207,1007),
(3003,  767.19,  "1994-8-3",  201,1001),
(3002,  1900.10, "1994-8-3",  207,1004),
(3005,  3005,    "1994-8-3",  203,1002),
(3006,  3006,    "1994-8-4",  207,1007),
(3009,  3009,    "1994-8-4",  202,1003),
(3007,  3007,    "1994-8-5",  204,1002),
(3008,  3008,    "1994-8-5",  206,1001),
(3010,  3010,    "1994-8-6",  204,1002),
(3011,  3011,    "1994-8-6",  206,1001);
 
 select * FROM SALESPERSON;
select * FROM  CUSTOMER;
select * FROM ORDER1; 
COMMIT;
 
 --  All orders for more than $1000.
 select *
 from ORDER1
 where AMT > 1000;
 
 --  Names and cities of all salespeople in London with commission above 0.10.
 
 select SNAME,CITY
 from  SALESPERSON 
 where COMM >0.10 AND CITY = 'LONDON';
 
 --  All salespeople either in Barcelona or in London.
 
 select * 
 from SALESPERSON
 where city = 'LONDON' or city='barcelona';
 
 -- All salespeople with commission between 0.10 and 0.12. (Boundary values shouldbe excluded).
 
 select *
  from salesperson
  where comm > 0.10 or comm < 0.12 ;

-- All customers excluding those with rating <= 100 unless they are located in Rome. 

select * 
from CUSTOMER  
where rating <= 100 and city = 'roe';

-- All orders except those with 0 or NULL value in amt field.
select * 
from  ORDER1 
where amt >0 ;

-- Count the number of salespeople currently listing orders in the order table

select ODE , SNO ,count(*) 
FROM ORDER1 
group by ODE,SNO;  

--  Largest order taken by each salesperson, datewise.

Select ode, sno, max(amt)
from order1
group by ode, sno
order by ode,sno;

 -- Largest order taken by each salesperson with order value more than $3000. (ie same city).
select amt , sno
from order1
where amt > 3000; 
 


