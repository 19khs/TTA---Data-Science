CREATE DATABASE StaffList;

create table    Staff_Details (
  	StaffNo int,
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
insert into Staff_Details (StaffNo, Name, Title, Age, StartDate, Grade, Salary)
values 	(3, "Freddie", "Mr", 25, "2020-07-01", "C", 24000),
		(2, "Lucy", "Mr",26,"2018-01-02","B",34400),
		(1, "Jamie", "Mr", 43, "2015-08-05","A",62000),
		

EXPLAIN StaffList;
