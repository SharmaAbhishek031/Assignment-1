Create database ORG;
Use ORG;
Create table Worker(
Worker_ID int not null primary key auto_increment,
First_Name char (25),
Last_Name char (25),
Salary int (15),
Joining_Date datetime,
Department char (25)
);

insert into Worker
(Worker_ID,First_Name,Last_Name,Salary,Joining_Date,Department)values
(001,'Monika','Arora',100000,'14-02-20 09.00.00','HR'),
(002,'Niharika','Verma',80000,'14-06-11 09.00.00','Admin'),
(003,'Vishal','Singhal',300000,'14-02-20 09.00.00','HR'),
(004,'Amitabh','Singh',500000,'14-02-20 09.00.00','Admin'),
(005,'Vivek','Bhati',500000,'14-06-11 09.00.00','Admin'),
(006,'Vipul','Dhawan',200000,'14-06-11 09.00.00','Account'),
(007,'Satish','Kumar',75000,'14-01-20 09.00.00','Account'),
(008,'Geetika','Chauhan',90000,'14-04-11 09.00.00','Admin');

select * from Worker;
# Q.No.1
select (First_Name) As WORKER_NAME from Worker;

# Q.No.2
Select Distinct Department From Worker;

# Q.No.3
SELECT LEFT(First_Name, 3) AS First_Name FROM Worker;

# Q.No.4
Select Distinct Department,length(Department) From Worker;

# Q.No.5
Select * from Worker order by First_Name Asc,Department Desc;

# Q.No.6
Select * from Worker where Department = "Admin";

# Q.No.7
Select * from Worker where salary between 100000 and 500000;

# Q.No.8
Select * from Worker where salary >=50000 and salary <=100000;

# Q.No.9
SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY Worker_ID) AS Even_Num FROM Worker)
 AS subquery WHERE Even_num % 2 = 0;

# Q.No.10
SELECT * FROM Worker WHERE DATE_FORMAT(Joining_Date, '%Y-%m') = '2014-02';

















