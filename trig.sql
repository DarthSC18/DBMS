Create Database Trig

use Trig;

Create Table Products(pid varchar(3) PRIMARY KEY, pname varchar(50), QTY INT, Rate Int);
Create Table Salesperson(empno Int Primary Key, Fname varchar(50), Sales_Amount Int);
Create Table Orders(Orders Int Primary Key, pid varchar(3) Foreign Key References Products, Emp_no Int Foreign Key References Salesperson, Amount Int);

insert into Products Values(01, 'Fan',20 , 4000),
(02, 'Fridge',20 , 40000),
(03, 'TV',20 , 50000),
(04, 'Laptop',20 , 60000),
(05, 'Phone',20 , 50000);

insert into Salesperson values(10, 'Raj', 40000),
(20, 'Tej', 4000),
(30, 'John', 50000),
(40, 'Jaden', 50000),
(50, 'Prem', 60000);

insert into Orders Values(11, 01,20 , 4000),
(12, 02,10 , 40000),
(13, 03,40 , 50000),
(14, 04,50 , 60000),
(15, 05,30 , 50000);

Create Trigger T1 
on Orders 
after Insert
As 
Begin
update P
set P.QTY=P.QTY-inserted.QTY
from Products P JOIN inserted 
on P.pid=inserted.pid
update S set S.Sales_Amount=S.Sales_Amount+inserted.Amount 
from Salesperson S JOIN inserted on S.empno=inserted.empno
end;
Create Trigger T2 
on Orders 
for Delete
As update Product
set QTY=QTY+Deleted.QTY
from Product, Deleted 
where Product.pid=Deleted.pid
update Salesperson set Sales_Amount=Sales_Amount+Deleted.Amount 
from Salesperson, Deleted where Salesperson.empno=Deleted.empno;



Create Trigger T1 
on Orders 
for Insert
As update P
set P.QTY=P.QTY-inserted.QTY
from Products P JOIN inserted 
where P.pid=inserted.pid
update S set S.Sales_Amount=S.Sales_Amount+inserted.Amount 
from Salesperson S JOIN inserted where S.empno=inserted.empno;


















