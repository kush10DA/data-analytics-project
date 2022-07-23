create database db10;
use db10;

Create table Employee(
Employee_id numeric,
First_name varchar(10) not null,
Last_name varchar(10) not null,
Salary numeric ,
Joining_date datetime not null,
Department varchar(10),
primary key(Employee_id)
);

Create table Incentive(
Employee_ref_id numeric,
Incentive_date date not null,
Incentive_amount numeric,
foreign key (Employee_ref_id) references Employee(Employee_id)
);

insert into Employee(Employee_id,First_name,Last_name,Salary,Joining_date,Department)
values
(1,'John','Abraham',1000000,'2013-01-01 12.00.00 AM','Banking'),
(2,'Michael','Clarke',800000,'2013-01-01 12.00.00 AM','Insurance'),
(3,'Roy','Thomas',700000,'2013-02-01 12.00.00 AM','Banking'),
(4,'Tom','Jose',600000,'2013-02-01 12.00.00 AM','Insurance'),
(5,'Jerry','Pinto',650000,'2013-02-01 12.00.00 AM','Insurance'),
(6,'Philip','Mathew',750000,'2013-01-01 12.00.00 AM','Service'),
(7,'TestName1','123',650000,'2013-01-01 12.00.00 AM','Service'),
(8,'TestName2','Lname%',6000000,'2013-02-01 12.00.00 AM','Insurance');

insert into Incentive(Employee_ref_id,Incentive_date,Incentive_amount)
values
(1,'2013-02-01',5000),
(2,'2013-02-01',3000),
(3,'2013-02-01',4000),
(1,'2013-01-01',4500),
(2,'2013-01-01',3500);

-- select * from Employee;
-- select * from Incentive;

 -- select First_name, Joining_date
-- from   Employee;

-- Get all employee details from the employee table order by First_Name Ascending and Salary descending.

select First_Name, salary 
from employee
order by First_name  asc;

select First_Name, salary 
from employee
order by salary desc;

SELECT * 
FROM EMPLOYEE
 WHERE FIRST_NAME LIKE '%o%';




select*
from Employee,Incentive
where Incentive.Incentive_amount > 3000;

select * from Employee 
where Department = 'Insurance' ;

select * from Employee 
where salary > 70000 and department = 'service';

select *
from Empolyee ,Incentive
where Employee.Employee_id = Incentive.Employee_ref_id;

select * from Employee 
where First_name like'%o%';
 COMMIT;