create database if not exists JDBCdb;

use JDBCdb;
create table students(
ID int auto_increment primary key,
name varchar(255) not null,
age int not null,
marks double not null
);

drop table students;
describe students;

insert into students (name, age ,marks) values("Amit",21,97.8);
select *from students;