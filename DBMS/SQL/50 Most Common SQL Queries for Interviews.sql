-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select FIRST_NAME AS WORKER_NAME FROM WORKERS;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select upper(FIRST_NAME) FROM WORKERS;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct DEPARTMENT FROM WORKERS DEPARTMENT;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(FIRST_NAME,1,3) FROM WORKERS;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
select INSTR(first_name, 'B') from worker where first_name = 'Amitabh';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(first_name) FROM WORKERS;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select Ltrim(first_name) FROM WORKERS;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct DEPARTMENT,length(DEPARTMENT) FROM WORKERS group by DEPARTMENT;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(first_name,'a','A') FROM WORKERS;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
select concat(first_name,' ',Last_name) AS COMPLATENAME FROM WORKERS;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM WORKERS ORDER BY FIRST_NAME;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM WORKERS ORDER BY FIRST_NAME , DEPARTMENT desc;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * FROM WORKERS  where first_name IN ('Vipul', 'Satish');

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * FROM WORKERS  where first_name NOT IN ('Vipul', 'Satish');

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
select * FROM WORKERS  where DEPARTMENT IN ('Admin');

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
Select * FROM WORKERS  where first_name LIKE '%A%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
Select * FROM WORKERS  where first_name LIKE '%A';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
Select * FROM WORKERS  where first_name LIKE '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
Select * FROM WORKERS WHERE SALARY between 100000 AND 500000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
Select * FROM WORKERS WHERE year(JOINING_DATE) = 2014 AND month(JOINING_DATE) = 02;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
Select DEPARTMENT,count(WORKER_ID) AS employees FROM WORKERS WHERE DEPARTMENT = 'Account';

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
select concat(first_name,' ',Last_name) AS COMPLATENAME , SALARY FROM WORKERS WHERE SALARY between 50000 and 100000 ;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
Select DEPARTMENT,count(WORKER_ID) AS NO_OF_employees FROM WORKERS group by DEPARTMENT order by count(WORKER_ID) desc;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select W.* ,T.WORKER_TITLE from WORKERS as W
inner join 
TITLE as T on W.WORKER_ID=T.WORKER_REF_ID where T.WORKER_TITLE = 'Manager';

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
Select WORKER_TITLE,count(*) AS COUNT FROM TITLE group by WORKER_TITLE having COUNT>1;

-- Q-26. Write an SQL query to show only odd rows from a table.
select * FROM WORKERS WHERE MOD (WORKER_ID,2) !=0;

-- Q-27. Write an SQL query to show only even rows from a table. 
select * FROM WORKERS WHERE MOD (WORKER_ID,2) =0;

-- Q-28. Write an SQL query to clone a new table from another table.
create TABLE WORKERS_CLOUN LIKE WORKERS;
insert INTO WORKERS_CLOUN select * FROM WORKERS;
select * from WORKERS_CLOUN;

-- Q-29. Write an SQL query to fetch intersecting records of two tables.
select W.* from WORKERS as W
inner join 
WORKERS_CLOUN as C on W.WORKER_ID=C.WORKER_ID;

-- Q-30. Write an SQL query to show records from one table that another table does not have.
-- MINUS
select W.* ,T.WORKER_TITLE from WORKERS as W
left join 
TITLE as T on W.WORKER_ID=T.WORKER_REF_ID where T.WORKER_TITLE IS NULL;

-- Q-31. Write an SQL query to show the current date and time.
-- DUAL
select curdate();
select now();

-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
select * FROM WORKERS order by SALARY desc limit 5;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select * FROM WORKERS order by SALARY desc limit 4,1;

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
select DISTINCT salary from workers w1
WHERE 4 = (
SELECT COUNT(DISTINCT (w2.salary))
from workers w2
where w2.salary >= w1.salary
);

-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
select W1.* FROM WORKERS W1,WORKERS W2 WHERE W1.SALARY=W2.SALARY AND W1.WORKER_ID != W2.WORKER_ID;

-- Q-36. Write an SQL query to show the second highest salary from a table using sub-query.
select max(salary) from workerS WHERE SALARY not IN  (select max(salary) from workerS);

-- Q-37. Write an SQL query to show one row twice in results from a table.
select * FROM WORKERS
union ALL
select * FROM WORKERS order by WORKER_id ;

-- Q-38. Write an SQL query to list worker_id who does not get bonus.
SELECT * FROM WORKERS WHERE WORKER_ID NOT IN(select WORKER_REF_ID FROM BONUS);

-- Q-39. Write an SQL query to fetch the first 50% records from a table.
SELECT * FROM WORKERS WHERE WORKER_ID <= (select count(WORKER_ID)/2 FROM WORKERS);

-- Q-40. Write an SQL query to fetch the departments that have less than 3 people in it.
select DEPARTMENT,count(DEPARTMENT) AS COUNT from WORKERS group by DEPARTMENT having COUNT < 3;

-- Q-41. Write an SQL query to show all departments along with the number of people in there.
select DEPARTMENT,count(DEPARTMENT) AS COUNT from WORKERS group by DEPARTMENT;

-- Q-42. Write an SQL query to show the last record from a table.
select * FROM WORKERS WHERE WORKER_ID IN (SELECT MAX(WORKER_ID) FROM WORKERS);

-- Q-43. Write an SQL query to fetch the first row of a table.
select * FROM WORKERS WHERE WORKER_ID IN (SELECT MIN(WORKER_ID) FROM WORKERS);

-- Q-44. Write an SQL query to fetch the last five records from a table.
(select * FROM WORKERS order by WORKER_ID desc limit 5) order by WORKER_ID;

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
select  w.* FROM 
(select MAX(SALARY) AS MAX_SALARY,depArtment FROM WORKERS group by depArtment)TEMP
INNER JOIN WORKERS AS W ON TEMP.depArtment=W.depArtment AND TEMP.MAX_SALARY=W.SALARY;

-- Q-46. Write an SQL query to fetch three max salaries from a table using co-related subquery
select distinct salary from workerS w1 
where 3>= (select count(distinct w2.salary) 
from workerS w2 where w1.salary <= w2.salary) 
order by w1.salary desc;

-- Q-47. Write an SQL query to fetch three min salaries from a table using co-related subquery
select distinct salary from workers w1
where 3>= (select count(distinct w2.salary) 
from workers w2 where w1.salary >= w2.salary) 
order by w1.salary desc;

-- Q-48. Write an SQL query to fetch nth max salaries from a table.
select distinct salary from workers w1
where n >= (select count(distinct salary) 
from workers w2 where w1.salary <= w2.salary) 
order by w1.salary desc;

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department , sum(salary) as depSal from worker group by department order by depSal desc;

-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select first_name, salary from worker where salary = (select max(Salary) from worker);
