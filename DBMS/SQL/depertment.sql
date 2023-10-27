create database depertment;
use depertment;

create table Dept1(
empid int primary KEY auto_increment,
fname varchar(25),
roole varchar(255)
);
insert into Dept1(fname,roole)values
('A','engineer'),
('B','salesman'),
('C','manager'),
('D','salesman'),
('E','engineer');




create table Dept2(
empid int,
Fname varchar(25),
roole varchar(255)
);

insert into Dept2(empid,fname,roole)values
(3,'C','manager'),
(6,'F','marketing'),
(7,'G','salesman');




-- SET OPERATIONS

select * from DEPT1
union
select * from DEPT2;



select * from DEPT1 WHERE ROOLE='salesman'
union
select * from DEPT2 WHERE ROOLE='salesman';




select * from DEPT1 inner JOIN DEPT2 USING(empid);






select DEPT1.* FROM DEPT1 left JOIN  DEPT2 USING(EMPID) WHERE DEPT2.EMPID IS NULL;