create database if not exists companydb;
use companydb;
create table if not exists department(
dname varchar(20),
dnumber int primary key,
MGRSSN varchar(15),
MGRSTARTDATE date
);
create table if not exists employee(
fname varchar(20),
MINIT char(11),
lname varchar(15),
SSN varchar(15) primary key,
BDATE date,
sex char(11),
SUPERSSN varchar(15),
DNO int,
foreign key (DNO) references department(dnumber)
);
INSERT ignore INTO department (dname, dnumber, MGRSSN, MGRSTARTDATE)
VALUES 
('Research',1,'123456789', '2023-01-15'),
('Finance', 2, '987654321', '2022-06-01'),
('IT', 3, '456789123', '2021-09-10'),
('Administration', 4, '741852963', '2024-03-20');
INSERT ignore INTO employee (fname, MINIT, lname, SSN, salary, BDATE, sex, SUPERSSN, DNO)
VALUES
('John', 'A', 'Smith', '111223333', '500000','1990-05-15', 'M', NULL, 1),
('Emma', 'B', 'Johnson', '222334444','200000000', '1992-08-21', 'F', '111223333', 2),
('Raj', 'K', 'Sharma', '333445555','456000', '1988-11-02', 'M', '111223333', 3),
('Sophia', 'L', 'Brown', '444556666','6750000', '1995-03-10', 'F', '222334444', 4);
select * from department;
select * from employee;
# ALTER TABLE employee ADD COLUMN IF NOT EXISTS salary DECIMAL(10,2);
#UPDATE employee SET salary = 50000 WHERE SSN = '111223333';
#UPDATE employee SET salary = 60000 WHERE SSN = '222334444';
#UPDATE employee SET salary = 55000 WHERE SSN = '333445555';
#UPDATE employee SET salary = 52000 WHERE SSN = '444556666';
# 1. 10% salary raise for research department

select e.fname, e.lname,
e.salary as old_salary,
e.salary * 1.10 AS increased_salary 
from employee e
join department d 
on e.DNO = d.dnumber
where d.dname ="Research";

# 2. select statistics of account department
# sum, max, min, avg for department adminstration
select sum(e.salary) as total,
max(e.salary) as max,
min(e.salary) as min,
avg(e.salary) as average 
from employee e
join department d 
on e.DNO = d.dnumber
where d.dname ="Administration";

# 3. retrive the name of each employee controlled by department number 4 (use exists operator)

SELECT e.fname, e.lname
FROM employee e
WHERE EXISTS (
    SELECT 1
    FROM department d
    WHERE d.dnumber = 4
    AND d.dnumber = e.DNO
);

# 4. departments having at least 2 employees
SELECT d.dname, COUNT(e.SSN) AS employee_count
FROM department d
JOIN employee e ON d.dnumber = e.DNO
GROUP BY d.dnumber, d.dname
HAVING COUNT(e.SSN) >= 2
ORDER BY employee_count DESC;

#5. employees born in 1990's
 select * from employee
 where year(BDATE ) between 1955 and 1999;

