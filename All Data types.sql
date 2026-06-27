show databases;
use college_students;
show tables;
create table batch1(id int,name varchar(10),phone_no bigint,marks float,bankbalnce decimal(5,2),mathscal double,gender char(1),address text,
joining_time time, joining_date date, id_access datetime, logged_at timestamp default current_timestamp, is_id boolean,
 status_mode enum('active','inactive','others'), skills set('problem-solving','harworking'));
desc batch1;
insert into batch1 values(10, 'wellsy',9876543234, 345.45454,345.67,168.9876543234567,'F','XXXXXXXXXXXXXXXXXXX','09:00:00','2026-01-02',
'2026-01-05 09:00:00',default,True,'active','problem-solving');
select * from batch2;
create table batch2(id int,name varchar(10),phone_no bigint,marks float,bankbalnce decimal(5,2),mathscal double,gender char(1),address text,
joining_time time, joining_date date, id_access datetime, logged_at timestamp default current_timestamp, is_id boolean,
 status_mode enum('active','inactive','others'), skills set('problem-solving','harworking'));
 insert into batch2 values(10, 'conrad',9876543234, 345.45454,345.67,168.9876543234567,'M','XXXXXXXXXXXXXXXXXXX','09:00:00','2026-01-02',
'2026-01-05 09:00:00',default,True,'active','problem-solving');