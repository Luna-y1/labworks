create database if not exists school;
use school;
create table if not exists dept (deptno int primary key,
deptname varchar(255),
LOC varchar(255)
);
select * from department;

rename table dept to department;

alter table department
add column pincode int not null default 0;


alter table department
change deptname dept_name varchar(255);

alter table department
modify LOC char(20);

drop table department;