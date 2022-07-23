create database db6;
use db6;

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


