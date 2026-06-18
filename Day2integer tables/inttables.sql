Enter password: ******************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
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
9 rows in set (0.01 sec)

mysql> show create 91r database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '91r database' at line 1
mysql> use 91r;
Database changed
mysql> create table batch1(id int,phone_number bigint,cgpa float,marks double,salary decimal(8,3));
Query OK, 0 rows affected (0.05 sec)

mysql> desc batch1;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| id           | int          | YES  |     | NULL    |       |
| phone_number | bigint       | YES  |     | NULL    |       |
| cgpa         | float        | YES  |     | NULL    |       |
| marks        | double       | YES  |     | NULL    |       |
| salary       | decimal(8,3) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into batch1 values(1,9876543218,7.677657,56.789876543245,76554876.986);
ERROR 1264 (22003): Out of range value for column 'salary' at row 1
mysql> insert into batch1 values(1,9876543218,7.677657,56.789876543245,76554.986);
Query OK, 1 row affected (0.01 sec)

mysql> select * from batch1;
+------+--------------+---------+-----------------+-----------+
| id   | phone_number | cgpa    | marks           | salary    |
+------+--------------+---------+-----------------+-----------+
|    1 |   9876543218 | 7.67766 | 56.789876543245 | 76554.986 |
+------+--------------+---------+-----------------+-----------+
1 row in set (0.00 sec)

mysql> insert into batch1 values(19876543223456,9876543218,7.677657,56.789876543245,76554.986);
ERROR 1264 (22003): Out of range value for column 'id' at row 1
mysql> insert into batch1 values(2,9876543218,7.6977657,56.789876543245,76554.986);
Query OK, 1 row affected (0.05 sec)

mysql> select * from batch1;
+------+--------------+---------+-----------------+-----------+
| id   | phone_number | cgpa    | marks           | salary    |
+------+--------------+---------+-----------------+-----------+
|    1 |   9876543218 | 7.67766 | 56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 | 56.789876543245 | 76554.986 |
+------+--------------+---------+-----------------+-----------+
2 rows in set (0.00 sec)

mysql> insert into batch1 values(2,9876543218,7.6977657,5777776.789876543245,76554.986);
Query OK, 1 row affected (0.01 sec)

mysql> select * from batch1;
+------+--------------+---------+-------------------+-----------+
| id   | phone_number | cgpa    | marks             | salary    |
+------+--------------+---------+-------------------+-----------+
|    1 |   9876543218 | 7.67766 |   56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 |   56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 | 5777776.789876543 | 76554.986 |
+------+--------------+---------+-------------------+-----------+
3 rows in set (0.00 sec)

mysql> insert into batch1 values(2,9876543218,7.6977657,56.78999999999876543245,76554.986);
Query OK, 1 row affected (0.06 sec)

mysql> select * from batch1;
+------+--------------+---------+-------------------+-----------+
| id   | phone_number | cgpa    | marks             | salary    |
+------+--------------+---------+-------------------+-----------+
|    1 |   9876543218 | 7.67766 |   56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 |   56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 | 5777776.789876543 | 76554.986 |
|    2 |   9876543218 | 7.69777 | 56.78999999999876 | 76554.986 |
+------+--------------+---------+-------------------+-----------+
4 rows in set (0.00 sec)

mysql> update cgpa=8.65
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=8.65' at line 1
mysql> update batch1
    -> set cgpa=8.65
    -> where id=1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from batch1;
+------+--------------+---------+-------------------+-----------+
| id   | phone_number | cgpa    | marks             | salary    |
+------+--------------+---------+-------------------+-----------+
|    1 |   9876543218 |    8.65 |   56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 |   56.789876543245 | 76554.986 |
|    2 |   9876543218 | 7.69777 | 5777776.789876543 | 76554.986 |
|    2 |   9876543218 | 7.69777 | 56.78999999999876 | 76554.986 |
+------+--------------+---------+-------------------+-----------+
4 rows in set (0.00 sec)

mysql> update batch1
    -> set phone number=67854329765
    -> where id=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'number=67854329765
where id=2' at line 2
mysql> set phone number=6785432976;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'number=6785432976' at line 1
mysql> update batch1
    -> set phone_nuber=67876543265
    -> where id=2;
ERROR 1054 (42S22): Unknown column 'phone_nuber' in 'field list'
mysql> update batch1
    -> set phone_number=6754329875
    -> where id=2;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from batch1;
+------+--------------+---------+-------------------+-----------+
| id   | phone_number | cgpa    | marks             | salary    |
+------+--------------+---------+-------------------+-----------+
|    1 |   9876543218 |    8.65 |   56.789876543245 | 76554.986 |
|    2 |   6754329875 | 7.69777 |   56.789876543245 | 76554.986 |
|    2 |   6754329875 | 7.69777 | 5777776.789876543 | 76554.986 |
|    2 |   6754329875 | 7.69777 | 56.78999999999876 | 76554.986 |
+------+--------------+---------+-------------------+-----------+
4 rows in set (0.00 sec)

mysql> delete batch1
    -> where id=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where id=2' at line 2
mysql> delete from batch1
    -> where id=2;
Query OK, 3 rows affected (0.01 sec)

mysql> select * from batch1;
+------+--------------+------+-----------------+-----------+
| id   | phone_number | cgpa | marks           | salary    |
+------+--------------+------+-----------------+-----------+
|    1 |   9876543218 | 8.65 | 56.789876543245 | 76554.986 |
+------+--------------+------+-----------------+-----------+
1 row in set (0.00 sec)

mysql> use 91r;
Database changed
mysql> create table batch2(id int,adharnumber bigiint,averagemarks float,totalcla double,balance decimal(5,3));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'bigiint,averagemarks float,totalcla double,balance decimal(5,3))' at line 1
mysql> create table batch2(id int,adharnumber bigint,averagemarks float,totalcla double,balance decimal(5,3));
Query OK, 0 rows affected (0.09 sec)

mysql> select * from batch1;
+------+--------------+------+-----------------+-----------+
| id   | phone_number | cgpa | marks           | salary    |
+------+--------------+------+-----------------+-----------+
|    1 |   9876543218 | 8.65 | 56.789876543245 | 76554.986 |
+------+--------------+------+-----------------+-----------+
1 row in set (0.00 sec)

mysql> desc tables;
ERROR 1146 (42S02): Table '91r.tables' doesn't exist
mysql> desc batch2;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| id           | int          | YES  |     | NULL    |       |
| adharnumber  | bigint       | YES  |     | NULL    |       |
| averagemarks | float        | YES  |     | NULL    |       |
| totalcla     | double       | YES  |     | NULL    |       |
| balance      | decimal(5,3) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into batch2 values(101,23456789734,78.876543,45.87654323456,345.54);
ERROR 1264 (22003): Out of range value for column 'balance' at row 1
mysql> insert into batch2 values(101,23456789734,78.876543,45.87654323456,345.594);
ERROR 1264 (22003): Out of range value for column 'balance' at row 1
mysql> insert into batch2 values(101,23456789734,78.876543,45.87654323456,34.594);
Query OK, 1 row affected (0.04 sec)

mysql> select * from batch2;
+------+-------------+--------------+----------------+---------+
| id   | adharnumber | averagemarks | totalcla       | balance |
+------+-------------+--------------+----------------+---------+
|  101 | 23456789734 |      78.8765 | 45.87654323456 |  34.594 |
+------+-------------+--------------+----------------+---------+
1 row in set (0.00 sec)

mysql> insert into batch2 values(102,234567897343456789654,78.876543,45.847654323456567895,34.594);
ERROR 1264 (22003): Out of range value for column 'adharnumber' at row 1
mysql> insert into batch2 values(102,2345678973434564,78.876543,45.847654323456567895,34.594);
Query OK, 1 row affected (0.01 sec)

mysql> select * from batch2;
+------+------------------+--------------+-------------------+---------+
| id   | adharnumber      | averagemarks | totalcla          | balance |
+------+------------------+--------------+-------------------+---------+
|  101 |      23456789734 |      78.8765 |    45.87654323456 |  34.594 |
|  102 | 2345678973434564 |      78.8765 | 45.84765432345657 |  34.594 |
+------+------------------+--------------+-------------------+---------+
2 rows in set (0.00 sec)

mysql> insert into batch2 values(103,23456789734,78.876543,45.87654323456,34.594);
Query OK, 1 row affected (0.02 sec)

mysql> select * from batch2;
+------+------------------+--------------+-------------------+---------+
| id   | adharnumber      | averagemarks | totalcla          | balance |
+------+------------------+--------------+-------------------+---------+
|  101 |      23456789734 |      78.8765 |    45.87654323456 |  34.594 |
|  102 | 2345678973434564 |      78.8765 | 45.84765432345657 |  34.594 |
|  103 |      23456789734 |      78.8765 |    45.87654323456 |  34.594 |
+------+------------------+--------------+-------------------+---------+
3 rows in set (0.00 sec)

mysql> insert into batch2 values(104,2345678973434564,78.876543,45.847654323456567895,34.594);
Query OK, 1 row affected (0.01 sec)

mysql> select * from batch2;
+------+------------------+--------------+-------------------+---------+
| id   | adharnumber      | averagemarks | totalcla          | balance |
+------+------------------+--------------+-------------------+---------+
|  101 |      23456789734 |      78.8765 |    45.87654323456 |  34.594 |
|  102 | 2345678973434564 |      78.8765 | 45.84765432345657 |  34.594 |
|  103 |      23456789734 |      78.8765 |    45.87654323456 |  34.594 |
|  104 | 2345678973434564 |      78.8765 | 45.84765432345657 |  34.594 |
+------+------------------+--------------+-------------------+---------+
4 rows in set (0.00 sec)

mysql>