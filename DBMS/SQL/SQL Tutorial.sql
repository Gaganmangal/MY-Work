select *from workers;

select first_name,SALARY from workers;

select 55+11;

select upper('gagan');

select now();

select *from workers;

select *from workers where salary > 80000;

select *from workers where department = 'hr';

select *from workers where salary between 75000 and 80000;

select *from workers where department = 'hr' or department = 'admin';

select *from workers where department in ('account','admin');

select *from workers where department not in ('account','admin');

select *from workers where salary is null;

select *from workers where first_name like '_i%';

select * from workers  ORDER BY salary; 

select distinct department from workers;

select department, count(department) from workers group by department;

select department, MAX(salary) from workers group by department;

select department, MIN(salary) from workers group by department;

select department, SUM(salary) from workers group by department;

select department, AVG(salary) from workers group by department;

select department, count(department) from workers group by department having count(department)>6;

-- UPDATE
select *from workers;
update workers set salary=40000,department= 'lll' where WORKER_ID=1;

-- UPDATE Multepaly
set sql_safe_updates = 0;
update workers set salary=40000,department= 'lll';
update workers set salary= salary+10000;

-- DELETE
delete from workers; 
delete from workers where WORKER_ID=1;


-- REPLACE

replace into workers(FIRST_NAME,LAST_NAME)values
('Mohit','Mangal');

replace into workers set WORKER_ID = 5,FIRST_NAME = 'Rohit', LAST_NAME = 'Jain';