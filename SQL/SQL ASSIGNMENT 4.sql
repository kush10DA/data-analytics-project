create database db13;
SHOW databases;
use dB13;


CREATE TABLE  Customers (
  CustomerId int(20) NOT NULL AUTO_INCREMENT,
  FirstName varchar(50) DEFAULT NULL,
  LastName varchar(50) DEFAULT NULL,
  City varchar(50) DEFAULT NULL,
  State varchar(2) DEFAULT NULL,
  Zip varchar(10) DEFAULT NULL,
  PRIMARY KEY (CustomerId));


INSERT INTO Customers (CustomerId, FirstName, LastName, City, State, Zip) VALUES
(1, 'Chintan', 'Patel', 'Anand', 'GJ', '388001'),
(2, 'Paresh', 'Prajapati', 'Nadiad', 'GJ', '387001'),
(3, 'Pragnesh', 'Patel', 'Surat', 'GJ', '395008'),
(4, 'Nilesh', 'Dharsandia', 'Mumbai', 'MH', '400002'),
(5, 'Sonal', 'Patel', 'Mumbai', 'MH', '400002'),
(6, 'Harshal', 'Patel', 'Mogri', 'GJ', '388345'),
(7, 'Prakash', 'Rathod', 'Mogri', 'GJ', '388345'),
(8, 'Aarzoo', 'Dodhiya', 'Rajkot', 'GK', '360003'),
(9, 'Heta', 'Dave', 'Varanasi', 'UP', '221002'),
(10, 'Nikita', 'Dave', 'Varanasi', 'UP', '221002'),
(11, 'Vaibhav', 'Dave', 'Varanasi', 'UP', '221002'),
(12, 'Paresh', 'Patel', 'Pune', 'MH', '411001'),
(13, 'Prakash', 'Patel', 'Pune', 'MH', '411001'),
(14, 'Sandhya', 'Patel', 'Hyderabad', 'AP', '500031'),
(15, 'Divesh', 'Patel', 'Bangalore', 'KA', '560002'),
(16, 'Payal', 'Shah', 'Bangalore', 'KA', '560002'),
(17, 'Priyanka', 'Rana', 'Anand', 'GJ', '388001'),
(18, 'Sanket', 'Dhebar', 'V.V.Nagar', 'GJ', '388121'),
(19, 'Puja', 'Shah', 'Varanasi', 'UP', '221002'),
(20, 'Priya', 'Shah', 'Varanasi', 'UP', '221002');


CREATE TABLE Products (
  ProductID int(20) NOT NULL AUTO_INCREMENT,
  ProductName varchar(20) DEFAULT NULL,
  RecommendedPrice varchar(20) DEFAULT NULL,
  Category varchar(10) DEFAULT NULL,
  PRIMARY KEY (ProductID)
);

INSERT INTO Products (ProductID, ProductName, RecommendedPrice, Category) VALUES
(1, 'DVD', '105', 'LivingRoom'),
(2, 'Microwave', '98', 'Kitchen'),
(3, 'Monitor', '200', 'Office'),
(4, 'Speakers', '85', 'Office'),
(5, 'Refrigerator', '900', 'Kitchen'),
(6, 'VCR', '165', 'LivingRoom'),
(7, 'CoffeePot', '35', 'Kitchen');


CREATE TABLE Sales (
  SalesID int(20) NOT NULL AUTO_INCREMENT,
  ProductID int(20) DEFAULT NULL,
  CustomerID int(20) DEFAULT NULL,
  SalesPrice varchar(20) DEFAULT NULL,
  SalesDate varchar(20) DEFAULT NULL,
  PRIMARY KEY (SalesID));

INSERT INTO Sales (SalesID, ProductID, CustomerID, SalesPrice, SalesDate) VALUES
(1, 1, 1, '130', '2005-06-2014'),
(2, 2, 2, '97', '2005-06-19'),
(3, 3, 3, '200', '2005-09-20'),
(4, 4, 4, '80', '2005-03-2022'),
(5, 5, 5, '899', '2005-01-23'),
(6, 6, 6, '150', '2005-03-24'),
(7, 3, 7, '209', '2005-03-10'),
(8, 4, 8, '90', '2005-08-11'),
(9, 6, 9, '130', '2005-08-12'),
(10, 2, 14, '85', '2005-12-13'),
(11, 3, 15, '240', '2005-05-14'),
(12, 1, 17, '87', '2005-07-19'),
(13, 2, 18, '99', '2005-09-20'),
(14, 6, 19, '150', '2005-07-22'),
(15, 5, 5, '900', '2005-03-06'),
(16, 4, 6, '86', '2005-04-07'),
(17, 2, 7, '88', '2005-11-08'),
(18, 3, 8, '198', '2005-05-09'),
(19, 1, 9, '150', '2005-10-10'),
(20, 6, 14, '99', '2005-05-09'),
(21, 6, 15, '104', '2005-09-20'),
(22, 4, 14, '90', '2005-07-22'),
(23, 1, 1, '130', '2005-03-06'),
(24, 2, 2, '102', '2005-04-07'),
(25, 1, 3, '114', '2005-11-08'),
(26, 5, 4, '1000', '2005-05-09'),
(27, 5, 5, '1100', '2005-10-10'),
(28, 3, 6, '285', '2005-06-11'),
(29, 2, 7, '87', '2005-10-12'),
(30, 3, 8, '300', '2005-07-13'),
(31, 3, 20, '205', '2005-12-31');

select * from Sales;
select * from Products;
select * from Customers;

-- Return the FirstName, LastName, ProductName, and SalePrice for all products sold in the month of October 2005.

select C.FirstName, C.LastName, P.ProductName, S.SalesPrice 
from Sales S inner join Products P on S.ProductID = P.ProductID 
inner join Customers C on S.CustomerID = C.CustomerID 
where S.SalesDate >='2005-10-01' and S.SalesDate < '2005-10-31';

-- Return the CustomerID, FirstName, and LastName of those individuals in the Customer table who have made no Sales purchases.
 
select C.FirstName, C.LastName, C.CustomerID
from Customers C inner join Sales S on S.CustomerID = C.CustomerID
where S.SalesPrice = 0;


-- Return the FirstName, LastName, SalePrice, Recommended SalePrice, and the difference between the SalePrice and Recommended 
-- SalePrice for all Sales. The difference must be returned as a positive number.

B3) Return the FirstName, LastName, SalePrice, Recommended SalePrice, and 
the difference between the SalePrice and RecommendedCUSTOMER_ID SalePrice for all 
Sales. The difference must be returned as a positive number.

SELECT  TBL_CUSTOMERS.FIRST_NAME,TBL_CUSTOMERS.LAST_NAME,   TBL_SALES.SALES_PRICE,   TBL_PRODUCTS.RECOMMENDED_PRICE , abs( TBL_SALES.SALES_PRICE - TBL_PRODUCTS.RECOMMENDED_PRICE ) as diff
FROM TBL_CUSTOMERS INNER JOIN TBL_SALES ON TBL_SALES.PRODUCT_ID = TBL_CUSTOMERS.CUSTOMER_ID 
INNER JOIN TBL_PRODUCTS ON TBL_PRODUCTS.T_ID ;



I1) Add the following Customer and Sale information to the database. (using 
store procedure)
 FirstName : Priyanka
 LastName : Chopra
 City:Mumbai
 State:MH
 Zip:400001
 ProductID:3
 SalePrice:205
 SaleDate:12/31/2005
 
 delimiter //
 create procedure xyza()
 begin 
	 insert into TBL_CUSTOMERS values ("46","Priyanka","Chopra","Mumbai","MH","400001");
	 insert into TBL_SALES values(3,5,205,"12-31-2005");
END;//
CALL XYZa();
drop procedure xyza;	 

 delimiter //
create procedure xyz()
 begin 
	 select * from TBL_CUSTOMERS ;
END;//
CALL XYZ();	


 
I2) Return the Product Category and the average Sale Price for those customers 
who have purchased two or more products.

SELECT DISTINCT FIRST_NAME,LAST_NAME,CATEGORY , COUNT(*) AS "TP",AVG(SALES_PRICE) AS "AVG SALES_PRICE"
FROM TBL_PRODUCTS 
INNER JOIN TBL_SALES ON TBL_PRODUCTS.T_ID = TBL_SALES.PRODUCT_ID
INNER JOIN TBL_CUSTOMERS ON TBL_SALES.CUSTOMER_ID = TBL_CUSTOMERS.CUSTOMER_ID 
GROUP BY FIRST_NAME,LAST_NAME,CATEGORY 
HAVING COUNT(*) >= 2;