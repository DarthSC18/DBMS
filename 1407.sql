create database University;
use University;

create table Department(Dept_id int primary key, Dept_name varchar (10))

create table Course(Course_id int primary key, course_name varchar(10),no_of_credits int)
create table Student(UIDno int primary key, F_name varchar(20), L_name varchar(20),DOB Date, Gender varchar(6),
S_email varchar(100), ph_stu varchar(10), Addr varchar(100), Program varchar(10), YearofStudy int, DOA Date)

create table Registration(UIDno int, Course_id int foreign key references Course)

create table Professor(emp_id int primary key,emp_name varchar(10), Email varchar(100),P_no varchar(10), Dept_id int foreign key references Department)

create table CourseProfessor(Course_ID int foreign key references Course, emp_id int foreign key references Professor)
delete from table Student
insert into Student values (2405026, 'Shivam', 'Chakraborty','2005-01-18', 'Male', 'shivam18001@gmail.com', '9987043669', 'Thane', 'BSc', 2025, '2024-06-18'),
(2405039, 'Dwayne', 'Dsouza','2006-11-04','Male','Dwayne.dsouza@gmail.com','2381937297','Bandra','Bsc',2025,'2024-06-18'),
(2405006, 'Liza', 'Fernandez','2006-07-18', 'Female', 'liza.ferns@gmail.com', '5647381937', 'Thane', 'BSc', 2025, '2024-06-18'),
(2405001, 'Gladwin', 'Gomes','2005-10-17', 'Male', 'GGomes@gmail.com', '4578903498', 'Goregaon', 'BSc', 2025, '2024-06-18'),
(2405002, 'Reshal', 'Menezes','2006-08-18', 'Female', 'RM@gmail.com', '3485678902', 'Vasai', 'BSc', 2025, '2024-06-18'),
(2405003, 'Alister', 'Robin','2006-01-18', 'Male', 'Ali.robin@gmail.com', '2678904576', 'Dahisar', 'BSc', 2025, '2024-06-18')
select* from Student
insert into Department values(10,'Stats'),(20,'English'),(30,'BMS'),(40,'Hindi')
insert into Professor values(101, 'Roy', 'Rthomas@gmail.com', '3456789012',10),(102, 'Aneesya', 'AV@gmail.com', '1234512345',20),
(103, 'George', 'GTharakan@gmail.com', '6789543210',30),(104, 'Bhawati', 'BU@gmail.com', '4567382910',40)
select* from Professor
