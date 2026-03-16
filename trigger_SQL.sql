create database BankDB;
use BankDB;
create table accounts(
account_id int primary key,
account_holder varchar(255),
balance decimal(10,2)
);
INSERT INTO accounts (account_id, account_holder, balance)
VALUES 
(1, 'John Doe', 5000.00),
(2, 'Alice Smith', 7500.50),
(3, 'Robert Brown', 12000.75),
(4, 'Emma Wilson', 3000.00);
SELECT * FROM accounts;
# write a transaction that transfers Rs. 5000 from
#John Doe account to Alice Smith account.

start transaction;
update accounts
set balance = balance - 5000
where account_holder = 'John Doe';

update accounts 
set balance = balance + 5000
where account_holder = 'Alice Smith';

commit;
#write a transaction that transfers Rs. 10000 from
#Alice Smith account to John Doe account and demonstrate the use of rollback.

start transaction;
update accounts
set balance = balance - 10000
where account_holder = 'Alice Smith';

update accounts 
set balance = balance + 10000
where account_holder = 'John Doe';

rollback;

# write a transaction that demonstrate the use of savepoint while updating account balance
start transaction;
update accounts
set balance = balance- 2000
where account_holder = 'John Doe';

savepoint sp1;

update accounts
set balance = balance + 2000
where account_holder = 'Alice Smith';

rollback to sp1;
commit;

# triggers
# create table employee
# with the fields emp_id, name , salary
create database bankdb;
use bankdb;
create table employees(
emp_id int primary key,
name varchar(255),
salary varchar(255) 
);

# create another table salary_log to record employee salary changes with fields: log_id, emp_id, 
#old_Salary, new_salary, update_at

create table salary_log(
log_id int primary key auto_increment,
emp_id int primary key,
old_salary decimal(10,2),
new_salary decimal(10,2),
update_at timestamp default current_timestamp
);

# create a BEFORE INSERT TRIGGER on employees that prevents inserting employees whose salary is less than 10000
Delimiter $$ 
create trigger check_salary
before insert on employees
for each row
begin
if new.salary < 10000 then
signal sqlstate '45000'
set message_text = 'salary be atleast 10000';
end if;
end $$
Delimiter ;

# create an after UPDATE TRIGGER on employees that prevents inserting employees whose salary is less than 10000
Delimiter $$
create trigger log_salary_update
after update on employees
for each row
begin
insert into salary_log(emp_id, old_salary, new_salary)
values(old.emp_id, old.salary, new.salary);
end $$
Delimiter ;

# stored procedure
# create a stored procedure getEmployees()

Delimiter $$
create procedure getEmployees()
begin
select * from employees;
end $$
Delimiter ;
call getEmployees();

#create a stored procedure that inserts a new employee into the employee table using parameters
Delimiter $$
create procedure addEmployee(
in p_id int,
in p_name varchar(255),
in p_salary decimal(10,2)
)
begin
insert into employees values (p_id, p_name, p_salary);
end $$
Delimiter ;
call employees(5, 'hari', 20000);

#create a stored procedure that updates the salary of an employee based on employee ID
Delimiter $$
create procedure updateSalary(
in p_id int, in new_salary decimal(10,2)
)
begin
update employees
set salary = new_salary
where emp_id = p_id;
end $$
Delimiter ;

# create a stored procedure that transfers money between two accounts using a transaction
Delimiter $$
create procedure transferMoney(
in from_account int, in to_account int, in amount decimal)
begin
start transaction;
UPDATE accounts
    SET balance = balance - amount
    WHERE account_id = from_account;

    UPDATE accounts
    SET balance = balance + amount
    WHERE account_id = to_account;

    COMMIT;

end $$
Delimiter ;
call transferMoney(1, 2, 5000);


