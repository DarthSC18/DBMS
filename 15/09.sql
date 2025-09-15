Create Database emp;

use emp;
drop table Employee
Create Table Employee(empno int primary key, empname varchar(30), salary int, deptno int);
alter table Employee 
Add manager varchar(30);
Insert into Employee values(100, 'Ray',50000, 01),(101, 'John',60000, 02), (102, 'Jaden',70000, 01), (103, 'Kabir',80000, 03), (104, 'Ashish',90000, 02), (105, 'Sameer',60000, 03),(106,'Sunil',90000,02),(107,'Sabeer',90000,01),(108, 'Iqbal',70000, 03),(109, 'Boris',70000, 03);
Update Employee set manager='Ronnie'
where deptno=01;
Update Employee set manager='Benny'
where deptno=02;
Update Employee set manager='Jack'
where deptno=03;
select* from Employee
--name of the employee who is getting maximum salary for each dept
select empno, empname, deptno from Employee e1  
where e1.salary=(Select max(salary) from employee e2 where e2.deptno=e1.deptno)
--find the dept having maximum number of employees
select top 1 deptno, count(empno) as Max_emp from Employee
group by deptno order by count(*) desc;

select top 2 deptno, count(empno) as Max_emp from Employee
group by deptno order by count(*) desc;
--details of dept having mroe than 3 employees
Select deptno, count(*) as Emp_Count from Employee group by deptno having count(*)>2
--name of the employee having the second highest salary
select empno, empname from Employee e1 where salary=
(select max(salary) from Employee where salary<(select max(salary) from employee));
--name of the employee and name of the corresponding manager
Select Empno, empname, manager from Employee  
--name of the employee whose first name starts with R and a and whose salary is more than 50000
Create table Dept
