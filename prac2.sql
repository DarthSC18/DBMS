artment (Dept_id int primary key, Dept_name varchar(15))

create table course(course_id int primary key, C_name varchar(10), No_of_credits int)

create table students(students_id int primary key, F_name varchar(15), L_name varchar(15), DOB date, 
Gender varchar(2), Email varchar(40), Phone numeric(10), Add_of_student varchar(50), year_of_student numeric(4), DOA date)


create table professor(empno int primary key, F_name varchar(15), Dept_id int foreign key references Department)
create table course_prof(course_id int foreign key references course, empno int foreign key references professor, constraint x2 primary key(course_id,empno))
create table student_enroll_course(students_id int foreign key references students, course_id int foreign key references professor constraint x2 primary key(students_id,course_id))

insert into Department values (10, 'IT'),(20,'HR'),(30,'RD')
insert into course values (100, 'DBMS'),(200,'OOPS'),(300,'WD'),(400,'OB'),(500,'BE')
select*from Department
select*from students
insert into students values(2405026, 'Shivam', 'Chakraborty', '2005-01-18','M','shivam18001@gmail.com',9987043669, 'Thane', 2027, '2024-06-18'),
(2405039, 'Dwayne', 'Dsouza', '2006-11-03','M','dwayne.aiden@gmail.com',1234567890, 'Bandra', 2027, '2024-06-18'),
(2405001, 'Gladwin', 'Gomes', '2005-10-17','M','gg@gmail.com',1234567890, 'Goregaon', 2027, '2024-06-18'),
(2405039, 'Liza', 'Fernandes', '2006-09-27','F','lf@gmail.com',1234567890, 'Mulund', 2027, '2024-06-18')
insert into professor values(123, 'Roy', 10),(456, 'Subhash', 20),(789, 'Bertilla', 30)
select*from professor
