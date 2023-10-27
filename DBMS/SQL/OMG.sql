create database OMG;
use OMG;
 
 create table WORKERS (
 WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 FIRST_NAME varchar(255),
 LAST_NAME varchar(255),
 SALARY INT(15),
 JOINING_DATE DATETIME,
 DEPARTMENT varchar(255)
 );

INSERT INTO WORKERS (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) values
('Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
('Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
('Vishal', 'Singhal', 76000, '14-02-20 09.00.00', 'HR'),
('Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'HR'),
('Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
('Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
('Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
('Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
ALTER TABLE WORKERS
DROP COLUMN SALARY;
select * from WORKERS;

CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT (10), 
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES WORKERS (WORKER_ID)
on delete cascade
);

INSERT INTO Bonus
(WORKER_REF_ID,BONUS_AMOUNT, BONUS_DATE) VALUES
(1,5000, '16-02-20'),
(2,3000, '16-06-11'),
(3,4000, '16-02-20'),
(1,4500, '16-02-20'),
(2,3500, '16-06-11');

select * from Bonus;

create table TITLE (
WORKER_REF_ID INT,
WORKER_TITLE varchar(255),
AFFECTED_FROM datetime,
foreign key(WORKER_REF_ID)
references WORKERS(WORKER_ID)
ON delete cascade
);


INSERT INTO TITLE
(WORKER_REF_ID,WORKER_TITLE, AFFECTED_FROM)VALUES
(1,'Manager', '2016-02-20 00:00:00'),
(2,'Executive', '2016-06-11 00:00:00'),
(8,'Executive', '2016-06-11 00:00:00'),
(5,'Manager', '2016-06-11 00:00:00'),
(4,'Asst. Manager', '2016-06-11 00:00:00'),
(7,'Executive', '2016-06-11 00:00:00'),
(6,'Lead', '2016-06-11 00:00:00'),
(3,'Lead', '2016-06-11 00:00:00');

select *from TITLE;

drop database omg;

desc workers;

select *from workers;
update workers set salary=40000,department= 'pppp' where WORKER_ID=1;



DROP DATABASE OMG;
