create database TedSolutionDB;
use TedSolutionDB;
create table department(departmentID int primary key auto_increment,
deptName varchar(255) not null,
location varchar(255)
); 

INSERT INTO department (deptName, location) VALUES
('Human Resources', 'New York'),
('IT', 'California'),
('Finance', 'Chicago'),
('Marketing', 'Los Angeles'),
('Research', 'Boston');

create table employee(empID integer primary key auto_increment,
FirstName varchar(255) not null,
LastName varchar(255) not null,
HireDate varchar(255) ,
Gender varchar(255),
Salary decimal(10,1) not null,
departmentID int not null, foreign key(departmentID) references department(departmentID)
);

INSERT INTO employee (FirstName, LastName, HireDate, Gender, Salary, departmentID) VALUES
('John', 'Smith', '2020-03-15', 'Male', 55000, 1),
('Emily', 'Johnson', '2019-07-21', 'Female', 72000, 2),
('Michael', 'Brown', '2021-01-10', 'Male', 68000, 3),
('Sophia', 'Davis', '2018-11-05', 'Female', 64000, 4),
('Daniel', 'Wilson', '2022-06-18', 'Male', 60000, 5);

create table project(projectID int primary key auto_increment,
ProjectName varchar (255) not null,
StartDate date not null,
EndDate date,
Budget Decimal(10,2) not null
);

INSERT INTO project (ProjectName, StartDate, EndDate, Budget) VALUES
('Website Development', '2024-01-10', '2024-06-30', 50000.00),
('Mobile App Development', '2024-02-01', '2024-08-15', 75000.00),
('Marketing Campaign', '2024-03-20', '2024-07-30', 30000.00),
('Financial System Upgrade', '2024-01-25', '2024-05-20', 45000.00),
('AI Research Project', '2024-04-01', NULL, 90000.00);

create table Works_on(
empID int not null,
projectID int not null,
HoursWorked decimal not null,
primary key(empID, projectID),
foreign key(empID) references employee(empID),
foreign key(projectID) references project(projectID)
);
INSERT INTO Works_on (empID, projectID, HoursWorked) VALUES
(1, 1, 120),
(2, 2, 150),
(3, 4, 100),
(4, 3, 90),
(5, 5, 200);

SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM project;
SELECT * FROM works_on;
# update the salary of an employee whose empID= 1 by increasing it by 10%
update employee
set Salary = Salary*1.10
where empID = 1;

#display all employee who earns more than 55000
select * from employee
where salary> 55000;

delete from projectID
where projectID = 5;

# display FirstName, lastname and salary of employees sorted by salary in descending order
select FirstName, LastName, Salary 
from employee 
order by Salary desc;

#display employees who belong to the it department
select e.FirstName, e.LastName, e.Salary
from employee e 
join department d on e.departmentID = d.departmentID
where d.deptName ="IT";

# show the total number of employees in each department
select departmentID, count(*) as totalemployees
from employees
group by departmentID;

#display the employees who were hired after january 1, 2022
select * from employees
where HireDate > '2022-06-18';

#display employee name along with their department name
SELECT e.FirstName, e.LastName, d.deptName
FROM employee e
JOIN department d
ON e.departmentID = d.departmentID;

# show employees and the project they are working on
SELECT e.FirstName, e.LastName, p.ProjectName
FROM employee e
JOIN Works_on w
ON e.empID = w.empID
JOIN project p
ON w.projectID = p.projectID;

#display project names with the total hours worked by the employee
SELECT p.ProjectName, SUM(w.hours) AS TotalHours
FROM project p
JOIN Works_on w
ON p.projectID = w.projectID
GROUP BY p.ProjectName;

# find the average salary of employees in each department
SELECT departmentID, AVG(Salary) AS AverageSalary
FROM employee
GROUP BY departmentID;

#display the department with higest number of employees
SELECT departmentID, COUNT(*) AS EmployeeCount
FROM employee
GROUP BY departmentID
ORDER BY EmployeeCount DESC
LIMIT 1;

# find employees whose salary is greater than salary of all the employees
SELECT *
FROM employee
WHERE Salary = (SELECT MAX(Salary) FROM employee);

# create a view named HighSalaryEmployees that shows employee with salary greater than 60000
create view HighSalaryEmployees as
select Salary
from employee
where Salary > 60000;

# create an index on the LastName column of the employee table
create index idx_LastName
on employee(LastName);


