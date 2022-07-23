create database db14;
use db14;



CREATE TABLE TBLEMP(
						ENO INT ,
						ENAME VARCHAR(20),
						BDATE DATE,
						TTTLE VARCHAR(20),
						SALARY INT,
						DNO INT
					);
                    
                    
				
CREATE TABLE TBLEPROJ(
						PNO INT,
						PNAME  VARCHAR(20),
						BUDGET VARCHAR(20) ,
						DNOP INT
					);



CREATE TABLE tbldept(
						dno INT,
						dname VARCHAR(20),
						mgreno VARCHAR(20));
                    
CREATE TABLE tblworkson(	
							eno INT,
							pno INT,
							resp VARCHAR(20),
							hours TIME
                        );

-- A1 Write an SQL query that returns the project name, department name, and budget for all projects with a budget < $50,000.

SELECT TBLEPROJ.PNAME,tbldept.dname
FROM TBLEPROJ INNER JOIN tbldept ON TBLEPROJ.PNO = TBLEPROJ.DNOP
WHERE budget < 50,000;

-- A2 Write an SQL query that returns the employee numbers and salaries of all employees in the “Consulting” department ordered by descending salary.

SELECT TBLEMP.ENO , TBLEMP.SALARY
FROM TBLEMP INNER JOIN tbldept ON TBLEMP.ENO = TBLEMP.DNO
WHERE dname = "Consulting";


A3 Write an SQL query that returns the employee name, project name, 
employee title and hours for all works on records.

SELECT TBLEMP.ENAME , TBLEPROJ.PNAME   TBLEMP.TTTLE
FORM TBLEMP INNER JOIN TBLEPROJ ON TBLEMP.PID = TBLEMP.EID;


B1 Write an SQL query that returns the project number and name for projects 
with a budget greater than $100,000. 

SELECT TBLEPROJ.PNO ,TBLEPROJ.NAME
FROM TBLEPROJ
WHERE BUDGET > "$100,000";


B2 Write an SQL query that returns all works on records where hours worked 
is less than 10 and the responsibility is “Manager”.

SELECT *
FROM tblworkson 
WHERE hours > 10 & resp = "Manager";

B3 Write an SQL query that returns the employees (number and name only) 
who have a title of “EEE‟ or “SA‟ and make more than $35,000.

SELECT ENAME ,number
FORM TBLEMP 
WHERE SALARY > "$35,000" & TITLE = "EEE" & TILTE = "SA";
B4 Write an SQL query that returns the employees (name only) in department 
“D1‟ordered by decreasing salary.


I1 Write an SQL query that returns the departments (all fields) ordered by 
ascending department name.

SELECT * 
FROM tbldept
ORDER BY NAME ASIC;


I2 Write an SQL query that returns the employee name, department name, and 
employee title.

SELECT TBLEMP.ENAME , tbldept.dname   TBLEMP.TTTLE
FORM TBLEMP INNER JOIN tbldept ON TBLEMP.DNO = TBLEMP.EID;

I3 Write SQL query that returns the project name, hours worked, and project 
number for all works on records where hours > 10.

SELECT TBLEPROJ.PNAME ,tblworkson.HOURS ,TBLEPROJ .PNO
FROM TBLEPROJ INNER JOIN tblworkson ON tblworkson.ENO = tblworkson.PNP
WHERE  hours > 10 ;