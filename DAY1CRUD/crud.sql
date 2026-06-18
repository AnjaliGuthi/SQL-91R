
Type '\help' or '\?' for help; '\quit' to exit.
 MySQL  JS > \sql
Switching to SQL mode... Commands end with ;
 MySQL  SQL > \connect root@localhost
Creating a session to 'root@localhost'
Please provide the password for 'root@localhost': ******************
Save password for 'root@localhost'? [Y]es/[N]o/Ne[v]er (default No): n
Fetching global names for auto-completion... Press ^C to stop.
Your MySQL connection id is 18 (X protocol)
Server version: 8.0.46 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  SQL > show databases;
+--------------------+
| Database           |
+--------------------+
| 91r                |
| 92r                |
| anjalidb           |
| information_schema |
| institute          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
8 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  SQL > create table swiggy;
ERROR: 1046: No database selected
 MySQL  localhost:33060+ ssl  SQL > create database swiggy;
Query OK, 1 row affected (0.0168 sec)
 MySQL  localhost:33060+ ssl  SQL > show databases;
+--------------------+
| Database           |
+--------------------+
| 91r                |
| 92r                |
| anjalidb           |
| information_schema |
| institute          |
| mysql              |
| performance_schema |
| swiggy             |
| sys                |
+--------------------+
9 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  SQL > create table customers;
ERROR: 1046: No database selected
 MySQL  localhost:33060+ ssl  SQL > use swiggy;
Default schema set to `swiggy`.
Fetching global names, object names from `swiggy` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  swiggy  SQL > show create database swiggy;
+----------+----------------------------------------------------------------------------------------------------------------------------------+
| Database | Create Database                                                                                                                  |
+----------+----------------------------------------------------------------------------------------------------------------------------------+
| swiggy   | CREATE DATABASE `swiggy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */ |
+----------+----------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > use swiggy;
Default schema set to `swiggy`.
Fetching global names, object names from `swiggy` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table cutomers;
ERROR: 4028: A table must have at least one visible column.
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table cutomers(id int,name varchar(20),phno int,location varchar(20));
Query OK, 0 rows affected (0.0530 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > show tables;
+------------------+
| Tables_in_swiggy |
+------------------+
| cutomers         |
+------------------+
1 row in set (0.0031 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into swiggy values(1,'trisha'),
                                         -> (2,'srija',9876543219,'Hyderabad'),
                                         -> (3,'prasanna',9876543219,'banglore');
ERROR: 1146: Table 'swiggy.swiggy' doesn't exist
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into customers values(1,'adya',9876543219,'hyderabad'),
                                         -> (2,'advaitha',9876543219,'banglore'),
                                         -> (3,'arun',9876543219,'chennai'),
                                         -> (4,'hari',9876543219,'mumbai');
ERROR: 1146: Table 'swiggy.customers' doesn't exist
 MySQL  localhost:33060+ ssl  swiggy  SQL > use swiggy;
Default schema set to `swiggy`.
Fetching global names, object names from `swiggy` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  swiggy  SQL > show tables;
+------------------+
| Tables_in_swiggy |
+------------------+
| cutomers         |
+------------------+
1 row in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table customers(id int,name varchar(20),phno int,location varchar(20));
Query OK, 0 rows affected (0.0464 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > show tables
                                         -> show tables;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show tables' at line 2
 MySQL  localhost:33060+ ssl  swiggy  SQL > show tables;
+------------------+
| Tables_in_swiggy |
+------------------+
| customers        |
| cutomers         |
+------------------+
2 rows in set (0.0032 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into customers values(1,'arun',9876543219,'hyderabad'),
                                         -> (2,'adya',9876543219,'banglore');
ERROR: 1264: Out of range value for column 'phno' at row 1
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table customers(id int,name varchar(20),phno varchar(20),location varchar(20));
ERROR: 1050: Table 'customers' already exists
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into customers values(1,'arun',9876543219,'hyderabad'), (2,'adya',9876543219,'banglore');
ERROR: 1264: Out of range value for column 'phno' at row 1
 MySQL  localhost:33060+ ssl  swiggy  SQL > desc cutomers;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | YES  |     | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| phno     | int         | YES  |     | NULL    |       |
| location | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.0046 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > show create table cutomers;
+----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                              |
+----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cutomers | CREATE TABLE `cutomers` (
  `id` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phno` int DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.0103 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > desc cutomers;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | YES  |     | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| phno     | int         | YES  |     | NULL    |       |
| location | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.0027 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > alter table cutomers
                                         -> modify phno varchar(20);
Query OK, 0 rows affected (0.1128 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into customers values(1,'arun',9876543219,'hyderabad'), (2,'adya',9876543219,'banglore');
ERROR: 1264: Out of range value for column 'phno' at row 1
 MySQL  localhost:33060+ ssl  swiggy  SQL > desc tables;
ERROR: 1146: Table 'swiggy.tables' doesn't exist
 MySQL  localhost:33060+ ssl  swiggy  SQL > desc cutomers;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | YES  |     | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| phno     | varchar(20) | YES  |     | NULL    |       |
| location | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.0032 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into customers values(1,'sanjana','9876543219','hyderabad'),
                                         -> (2,'akash','8765432198','banglore');
ERROR: 1264: Out of range value for column 'phno' at row 1
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into customers values(1,'arun',9,'hyderabad'), (2,'adya',9,'banglore');
Query OK, 2 rows affected (0.0152 sec)

Records: 2  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  swiggy  SQL > desc customers;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | YES  |     | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| phno     | int         | YES  |     | NULL    |       |
| location | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > select * from customers;
+----+------+------+-----------+
| id | name | phno | location  |
+----+------+------+-----------+
|  1 | arun |    9 | hyderabad |
|  2 | adya |    9 | banglore  |
+----+------+------+-----------+
2 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table employess;
ERROR: 4028: A table must have at least one visible column.
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table employess(id int,name varchar(20), phone_number varchar(20),location);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
 MySQL  localhost:33060+ ssl  swiggy  SQL > create table employess(id int,name varchar(20), phone_number varchar(20),location varchar(20));
Query OK, 0 rows affected (0.0401 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > show tables;
+------------------+
| Tables_in_swiggy |
+------------------+
| customers        |
| cutomers         |
| employess        |
+------------------+
3 rows in set (0.0025 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > desc employess;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | YES  |     | NULL    |       |
| name         | varchar(20) | YES  |     | NULL    |       |
| phone_number | varchar(20) | YES  |     | NULL    |       |
| location     | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into employess values(1,'sanjana','9876543219','hyderabad');
Query OK, 1 row affected (0.0158 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > select * from employess;
+----+---------+--------------+-----------+
| id | name    | phone_number | location  |
+----+---------+--------------+-----------+
|  1 | sanjana | 9876543219   | hyderabad |
+----+---------+--------------+-----------+
1 row in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > insert into employess values(2,'sanjay','9876543219','hyderabad');
Query OK, 1 row affected (0.0139 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > select * from employess;
+----+---------+--------------+-----------+
| id | name    | phone_number | location  |
+----+---------+--------------+-----------+
|  1 | sanjana | 9876543219   | hyderabad |
|  2 | sanjay  | 9876543219   | hyderabad |
+----+---------+--------------+-----------+
2 rows in set (0.0010 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > update employess
                                         -> set location='chennai'
                                         -> where id=1;
Query OK, 1 row affected (0.0142 sec)

Rows matched: 1  Changed: 1  Warnings: 0
 MySQL  localhost:33060+ ssl  swiggy  SQL > select * from employess;
+----+---------+--------------+-----------+
| id | name    | phone_number | location  |
+----+---------+--------------+-----------+
|  1 | sanjana | 9876543219   | chennai   |
|  2 | sanjay  | 9876543219   | hyderabad |
+----+---------+--------------+-----------+
2 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > delete from employess
                                         -> where id=2;
Query OK, 1 row affected (0.0138 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL > select * from employess;
+----+---------+--------------+----------+
| id | name    | phone_number | location |
+----+---------+--------------+----------+
|  1 | sanjana | 9876543219   | chennai  |
+----+---------+--------------+----------+
1 row in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  swiggy  SQL >