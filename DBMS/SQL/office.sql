create database office;
use office;

create table employes(
id int primary key auto_increment,
fname varchar(255) not null,
lname varchar(255) not null,
Age int(3),
email_id varchar(255) unique,
Phone_no int(10) unique,
City varchar(255)
);

insert into employes
(fname,lname,Age,email_id,Phone_no,City)values
('Aman','Proto',32,'aman@gmail.com',57418445,'Delhi'),
('Yagya','Narayan',44,'yagya@gmail.com',455454454,'Palam'),
('Rahul','BD',22,'rahul@gmail.com',5453154,'Kolkata'),
('Jatin','Hermit',31,'jatin@gmail.com',5454154,'Raipur'),
('PK','Pandey',21,'pk@gmail.com',5773154,'Jaipur');

select *from EMPLOYES;


create table projects(
pro_id int primary key auto_increment,
empid int,
Fname varchar(255),
startdate date,
clientid int,
foreign key (clientid) references clients (id),
foreign key(empid) REFERENCES employes (id)
on delete cascade
);

insert into projects
(Fname,empid,startdate,clientid)values
('A',3,'2021-04-21',3),
('B',5,'2021-03-12',1),
('C',1,'2021-01-16',5),
('D',3,'2021-04-27',2),
('E',2,'2021-05-01',4);

select *from projects;


create table clients(
id int primary key auto_increment,
fname varchar(255) not null,
lname varchar(255) not null,
Age int(3),
email_id varchar(255) unique,
Phone_no int(10) unique,
City varchar(255),
empid int,
foreign key (empid) references employes (id)
);


insert into clients
(fname,lname,Age,email_id,Phone_no,City,empid)values
('Mac','Rogers',47,'mac@hotmail.com',3333333,'Kolkata',3),
('Max','Poirier',27,'max@gmail.com',22222,'Kolkata',3),
('Peter','Jain',24,'peter@abc.com',1111111,'Delhi',1),
('Sushant','Aggarwal',23,'sushant@yahoo.com',66666666,'Hyderabad',5), 
('Pratap','Singh',36,'p@xyz.com',555555,'Mumbai',2); 

select *from clients;





-- INNER JOIN

select e.id,e.fname,e.lname,p.pro_id,p.fname from employes as e
inner join projects as p on e.id=p.pro_id;

select e.id,e.email_id,e.Phone_no,c.fname,c.lname from employes as e
inner join clients as c on e.id=c.empid where e.city = 'jaipur' AND c.city = 'Hyderabad';


-- Left join 
select * from employes as e 
left join projects as p on e.id = p.empid;


-- Right join
select p.pro_id,p.fname,e.fname,e.lname,e.email_id from employes as e 
right join projects as p on e.id = p.empid;




-- join without using join keywordes
select e.id,e.fname,e.lname,p.pro_id,p.fname from employes as e,
projects as p where e.id=p.pro_id;



-- SUB QUERIES

select * FROM EMPLOYES WHERE AGE in (SELECT AGE FROM EMPLOYES WHERE AGE>30);



select *FROM EMPLOYES WHERE ID IN(select EMPID FROM PROJECTS group by EMPID having count(EMPID)>1);


-- SINGLE VALUE SUB QUERIES
select * FROM EMPLOYES WHERE AGE >(select AVG(AGE) FROM EMPLOYES);



-- FROM CLAUSE
select max(AGE) FROM (select * from EMPLOYES where FNAME Like '%a%')as office;




















-- viwe
select * from employes ;


-- create view
create view custom_view as select fname,lname,age from employes;
select *from custom_view;


-- update
alter view custom_view as select fname,lname,age,city from employes;

drop 