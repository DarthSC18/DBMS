create database Lib
use Lib

create Table Member(MemberID int Primary Key, Name varchar(40), Address varchar(20), Phone varchar(10), MembershipDate Date) 
create Table Book(ISBN int Primary Key, Title varchar(20), Publisher varchar(20), YearOfPublication Date) 
create Table Author(AurthorID int Primary Key, Name varchar(40))
create Table BookAuthor(ISBN int Foreign Key References Book, AuthorID int foreign key references Author, constraint x primary key(ISBN,AuthorID))
create Table Borrow(BorrowID int primary key, MemberID int foreign key references Member(MemberID), ISBN int foreign key references Book(ISBN), BorrowDate Date, DueDate Date, LibrarianID int)
insert into Member values(1234, 'Shivam', 'Thane', '9987043669','2023-01-01'), 
(1244, 'Dwayne', 'Bandra', '1234567890','2020-01-01'), (1254, 'Gladwin', 'Goregaon', '1234567809','2021-01-01'),
(1264, 'Liza', 'Thane', '1234568790','2022-01-01'),(1274, 'Ryan', 'Dahisar', '1235467890','2024-01-01'),
(1284, 'Alister', 'Borivali', '4321567890','2021-01-01'),(1294, 'Prion', 'Virar', '1234098765','2022-01-01');
insert into Book values(2234, 'War and Peace','Penguin Publisher' , '1866'), (2233, 'Crime and Punishment','FingerPrint Classics' , '1866'),
(2244, 'Data Science','Savitri ' , '2019'),(2134, 'Computer Science','Stanford' , '2016');
select * from Book
insert into Author values(01, 'Fyodor Dostoevsky'),(02,'Leo Tolstoy'),(03,'Roy Thomas'),(04,'Aaron Johns');
insert into BookAuthor values(2234,02),(2233,01),(2244,03),(2134,04);
insert into Borrow values(11, 1234, 2234, '2023-04-03','2024-01-01', 5423),(12, 1234, 2233, '2023-10-08','2024-01-01', 5423),
(13, 1244, 2134, '2024-04-03','2025-01-01', 5423),(14, 1254, 2244, '2025-04-03','2026-01-01', 5423),
(15, 1264,2234 , '2024-04-03','2025-01-01', 5423),(16, 1274,2233 , '2025-04-03','2026-01-01', 5423),
(17, 1284,2244 , '2022-04-03','2023-01-01', 5423),(18, 1294,2134 , '2023-04-03','2024-01-01', 5423);

select * from Member WHERE MembershipDate > '2023-01-01'
select Name, Phone from Member where address='Thane'
select * from Book WHERE YearOfPublication >'2010'
select * from Book WHERE Publisher = 'Penguin Publisher'
select * from Author where Name like 'A%'
select count(Name) from Member 
select year(min(YearOfPublication)) from Book
select distinct M.Name from Member M, Borrow B 
where M.memberID=B.MemberID
select B.Title, A.Name
from Book B, Author A, BookAuthor BA
where BA.ISBN=B.ISBN and
BA.AuthorID=A.AurthorID
select A.name, Count(BA.ISBN)
from Book B, BookAuthor BA, Author A
where B.ISBN=BA.ISBN and BA.AuthorID=A.AurthorID
group by A.Name
select M.name
from Member M, Book B, Borrow BW 
where B.Title='Data Science' and BW.ISBN=B.ISBN and BW.MemberID=M.MemberID
select M.Name, B.Title 
From Member M, Borrow BW, Book B
where BW.ISBN=B.ISBN and BW.MemberID=M.MemberID
select B.ISBN, B.Title
From Book B, BookAuthor BA, AUthor A
where B.ISBN=BA.ISBN and BA.AuthorID=A.AurthorID
group by B.ISBN,B.Title Having count(BA.AuthorID)>1
Select B.Title, A.Name
from Book B, Author A, BookAUthor BA
Where B.ISBN=BA.ISBN and BA.AUthorID=A.AurthorID
