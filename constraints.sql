show databases;
create database details;
use details;
create table dept(dept_id int primary key auto_increment, dept_name varchar(10) not null);
desc dept;
create table emp(emp_id int primary key, empname varchar(10) not null,Adhar_no bigint unique, age int check(age>18), 
dept_id int, foreign key(dept_id) references dept (dept_id),location varchar(10) default 'hyderabad');
desc emp;
insert into dept values(105,'Ece');
select * from dept;
insert into emp values( 5,'scott',2345678967,22,102,'hyderabad');
select * from emp;
create table department_1(dept_id int primary key ,
dept_name varchar(10) not null);

show tables;
drop table department;
use details;
desc department_1;
create table employee_1( emp_id int primary key auto_increment,
 empname varchar(10) not null,location varchar(20) default'hyderabad', 
 pan_no bigint unique, age int check(age>18), current_dept int,
 previous_dept int,foreign key(current_dept) references 
 department_1(dept_id),foreign key (previous_dept)
 references department_1(dept_id));
 desc employee_1;
 insert into department_1 values(106,'cse');


 select * from department_1;
 
 insert into employee_1 values(5,'scott','`hyderabad',2515678918,22,
 '106','105');
  select * from employee_1;