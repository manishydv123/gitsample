create table TRG_EMP1(
id int(7),
last_name varchar(25),
first_name varchar(25),
dept_id int(7)
);
alter table TRG_EMP1 modify last_name varchar(50);
use practice1and2;

show tables;




desc TRG_EMP1;
create table TRG_DEPT22(
id int(7),
name varchar(25)
);
insert into TRG_DEPT22
select department22_id,department22_name
from TRG_DEPT22;


insert into TRG_EMP1
SELECT department_id, department_name
from TRG_EMP1;
create table TRG_EMP25(
emp_id int(7),
first_name varchar(20),
last_name varchar(20),
salary double(5,2),
dept_id varchar(7)
);
drop table TRG_EMP1;
alter table emp add constraint my_emp_id_pk primary key(id);


create table employees(
emp_id varchar(8) not null,
emp_name varchar(50) not null,
last_name varchar(255) not null,
salary double(5,2),
email varchar(25),
hire_date date not null,
constraint primary key (emp_id),
constraint emp_email_uk unique(email)
);
create table departments(
department_id int(4),
department_name varchar(30) not null,
manager_id int(6),
location_id int(4),
constraint dept_id_pk primary key(department_id)
);
create table TRG_DEPT5(
id int(7),
name varchar(20)
);
insert into TRG_DEPT5 select department_id,department_name from departments;
create table TRG_EMP(
id int(7),
last_name varchar(25),
first_name varchar(25),
dept_id int(7)
);
alter table TRG_EMP modify last_name varchar(50);
create table TRG_EMPLOYEES(
EMPLOYEE_ID int(7),
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
SALARY double(5,2),
DEPARTMENT_ID int(5)
);
drop table TRG_EMP;
rename table TRG_EMPLOYEES to TRG_EMP;
desc TRG_EMP;
alter table TRG_EMP drop column FIRST_NAME;
desc TRG_EMP;
alter table TRG_EMP add constraint my_emp_id_pk primary key (EMPLOYEE_ID);
alter table TRG_DEPT5 add constraint my_dept_id_pk primary key (id);
alter table TRG_EMP add (dept_id int(7));
alter table TRG_EMP add constraint my_emp_dept_id_fk foreign key (dept_id) references TRG_DEPT5(id);
create table MY_EMPLOYEES(
ID int(4),
last_name varchar(20),
first_name varchar(20),
userid varchar(8),
salary double(9,2)
);
insert into MY_EMPLOYEES values (1, 'patel', 'ralph', 'rpatel', 895);
insert into MY_EMPLOYEES values (2, 'dancs', 'betty', 'bdancs', 860);
select * from MY_EMPLOYEES;
update MY_EMPLOYEES set last_name = 'drexler' where id = 1;
create table DEPT(
deptno int(2),
dname varchar(14),
loc varchar(13)
);
insert into dept values(10, 'accounting', 'new york');
insert into dept values(20, 'research', 'dallas');
insert into dept values(30, 'sales', 'chicago');
insert into dept values(40, 'operations', 'boston');
select * from dept;
create table emp1(
ename varchar(10),
empno int(4),
job varchar(9),
mgr int(4),
startdate date,
sal double(7,2),
comm int(25),
deptno int(2)
);
insert into emp1 values('king',7389,'president',00,17/11/81,5000,0,10);
insert into emp1 values('blake',7698,'manager',7839,01/05/81,2850,0,30);
insert into emp1 values('clark',7566,'manager',7839,09/06/81,2450,0,10);
insert into emp1 values('jones',7566,'manager',7839,02/04/81,2975,0,20);
insert into emp1 values('martin',7654,'salesman',7698,28/09/81,1250,1400,30);
insert into emp1 values('allen',7499,'salesman',7698,20/02/81,1600,300,30);
insert into emp1 values('turner',7844,'salesman',7698,08/09/81,1500,0,30);
insert into emp1 values('james',7900,'clerk',7698,03/12/81,950,0,30);
insert into emp1 values('ward',7521,'salesman',7698,22/02/81,1250,500,30);
insert into emp1 values('smith',7369,'clerk',7902,17/12/80,800,0,20);
insert into emp1 values('ford',7902,'analyst',7566,03/12/81,3000,0,20);
insert into emp1 values('scott',7788,'analyst',7566,09/12/82,3000,0,20);
insert into emp1 values('adams',7876,'clerk',7788,12/01/83,1100,0,20);
insert into emp1 values('miller',7934,'clerk',7782,23/01/82,1300,0,10);
select * from emp1;
select distinct job from emp;
alter table emp change job job_title varchar(50);
alter table emp change ename EMP varchar(50);
alter table emp change startdate hire_date varchar(50);
alter table emp change empno Employee varchar(50);
select EMP,deptno from emp where Employee 7902;
SELECT * FROM emp;
select EMP,deptno from emp where empno 7;
select EMP,sal from emp where sal not between 2000 and 5000;
select EMP,job_title,hire_date from emp where hire_date between 20/02/81 and 01/05/81;
select EMP,
show dbs;
use practice1and2;
show tables;
desc emp;
select * from emp;
use basic_select;
show tables;
select * from practice_details;
select  e.ENAME, e.DEPTNO, d.dname from emp e join departments d on e.DEPTNO = d.deptno;


show databases;
select * from emp;
use practice1and2;
select * from emp;
show databases;
use practice1and2;


create schema 'training' ;
































