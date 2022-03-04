CREATE DATABASE StaffList;

create table    Staff_Details (
  	EmpID int,
    Name varchar(40),
    Title enum('Mr','Ms','Mrs'),
    Age int,
    StartDate date,
    Grade char(1),
    Salary decimal,
  	ContractType enum("Perm","Temp") DEFAULT "Perm",
  	PRIMARY KEY (Name),
	UNIQUE (EmpID)
);
insert into Staff_Details (EmpID, Name, Title, Age, StartDate, Grade, Salary)
values 	(3, "Freddie", "Mr", 25, "2020-07-01", "C", 20000.1),
		(2, "Lucy", "Mr",26,"2018-01-02","B",34000.41),
		(1, "Jamie", "Mr", 43, "2015-08-05","A",60000.99),
		

EXPLAIN StaffList;