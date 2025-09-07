create table empl (
  empno int primary key,
  ename varchar(50),
  job varchar(50),
  mgr int,
  hiredate date,
  sal decimal(10,2),
  comm decimal(10,2),
  deptno int
);
insert into empl values
(8369,'SMITH','CLERK',8902,'1990-12-18',800,null,20),
(8499,'ANYA','SALESMAN',8698,'1991-02-20',1600,300,30),
(8521,'SETH','SALESMAN',8698,'1991-02-22',1250,500,30),
(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985,null,20),
(8654,'MOMIN','SALESMAN',8698,'1991-09-28',1250,1400,30),
(8698,'BINA','MANAGER',8839,'1991-05-01',2850,null,30),
(8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450,null,10),
(8888,'SCOTT','ANALYST',8566,'1992-12-09',3000,null,20),
(8839,'AMIR','PRESIDENT',null,'1991-11-18',5000,null,10),
(8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500,0,30);
select ename, sal from empl where sal >= 2200;
select * from empl where comm is null or comm = 0;
select ename, sal from empl where sal not between 2500 and 4000;
select ename, job, sal from empl where mgr is null;
select ename from empl where ename like '__A%';
select ename from empl where ename like '%T';
create table Employee (
    empcode int primary key,
    empname varchar(50),
    empage int,
    esalary int
);
select * from Employee;