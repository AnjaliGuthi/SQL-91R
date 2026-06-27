show databases;
drop database college;
use 92r;
show tables;
create database college_students;
create table college_students (id int,name varchar(20),aadhar_no bigint,joining_date date,joining_time time, id_access datetime, gender enum('female','male','others'),skillset set('java','python','sql'),is_stu_id boolean);
desc college_students;
insert into college_students values(2,'scott',2345678934,'2026-02-01','09:40:00','2026-02-05','male','java',True);
select * from college_students;
drop database college_students;
use college_students;
create table stu(   id INT,
  name VARCHAR(10),
  aadhar_no BIGINT,
  joining_date DATE,
  joining_time TIME,
  id_access DATETIME,
  logged_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_id BOOLEAN,
  gender ENUM('female','male','others'),
  skillset SET('java','python','sql'));
desc stu;
insert into stu values (5,
  'zyan',
  2345678923,
  '09:00:00',
  '2025-02-02',
  '2025-02-06 09:00:00',
  DEFAULT,
  TRUE,
  'male',
  'python');
select * from stu;
update stu
set gender='female'
where id=4;







