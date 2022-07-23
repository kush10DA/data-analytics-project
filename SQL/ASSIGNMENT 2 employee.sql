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

 select * from Employee;
 select * from Incentive;
 
 -- Get First_Name from employee table using alias name “Employee Name”
  select first_name
  as "employee name"
  from employee;
  
  -- Get FIRST_NAME, Joining year, Joining Month and Joining Date from employee table.
  select first_name




 

-- Get all employee details from the employee table order by First_Name Ascending and Salary descending.

select First_Name, salary 
from employee
order by First_name  asc;

select First_Name, salary 
from employee
order by salary desc;

-- Get employee details from employee table whose first name contains ‘o’.
SELECT * 
FROM EMPLOYEE
 WHERE FIRST_NAME LIKE '%o%';
 
 -- Get employee details from employee table whose joining month is “January”. 
select *
from employee
where Joining_date = "january";

-- Get department, total salary with respect to a department from employee table order by total salary descending.
select department,sum(salary)totalsalary
from employee group by department
order by totalsalary desc;

-- Get department wise maximum salary from employee table order by salary ascending.

select department , max(salary)totalsalary
from employee group by department
order by totalsalary asc;

-- Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000
select*
from Employee,Incentive
where Incentive.Incentive_amount > 3000;

-- Select 2nd Highest salary from employee table
select *from employee 
group by salary 
order by  salary desc limit 1;

-- Select first_name, incentive amount from employee and incentives table for all employees who got incentives using left join.
		SELECT EMPLOYEE.FIRST_NAME ,INCENTIVE.INCENTIVE_AMOUNT
		FROM EMPLOYEE
        LEFT JOIN INCENTIVE 
		ON  EMPLOYEE.EMPLOYEE_ID = INCENTIVE.EMPLOYEE_REF_ID;
        
       -- create View OF Employee table in which store first name ,last name andsalary only.
select first_name , last_name, salary
from employee;

-- Create Procedure to find out department wise highest salary.
select department ,salary
from employee
group  by salary desc;




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

 drop trigger before_insert_employee;
 drop trigger before_insert_employee;

delimiter //
create trigger before_insert_employee
before insert on employee for each row
begin
if new.Joining_date > sysdate() then set new.Joining_date = sysdate();
end if;
end ; //

insert into employee
values (10,'hilip','athew',750000,'2022-04-21 12.00.00 AM','Service');
select * from employee

commit;

 delimiter//
 create trigger after_insert_Employee
 after insert on Employee for each row
 begin
 if new.salary < 750000   then set new.salary = 800000;
end if;
 end  //

 
 
 

