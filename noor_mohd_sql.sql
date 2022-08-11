create database myemp 

use myemp

create table emp(sno int,ename varchar(10),esal int,dept varchar(10))

insert into emp values (1,'a',100,'hr')

insert into emp values (3,'a',200,'sales')

insert into emp values (2,'ab',300,'sales')

insert into emp values (4,'c',400,'acc')

insert into emp values (5,'b',500,'mrt')

insert into emp values (9,'ac',100,'mrt')

insert into emp values (8,'ad',100,'acc')

insert into emp values (7,'ae',100,'hr')


select*from emp

alter Table emp alter column esal varchar(20)

sp_help

select*from INFORMATION_SCHEMA.tables


insert into emp(esal) values(10000)

select*from emp

insert into emp(dept) values('dgm')

select*from emp

select*from emp where esal>(select max(esal)as higest from emp where ename='ab')

select sno,ename from emp where esal>(select max(esal) as higest from emp where ename='ad')

select sno,ename from emp where esal is not null

select ename, dept from emp where esal> (select max(esal) from emp where dept='sales')
select sno,ename,dept from emp where esal>(select max(esal) from emp where dept in('sales','acc'))
select sno,ename,dept from emp where esal>(select max(esal) from emp where dept not in('sales','acc'))

select e1.sno,e1.ename,e1.esal,e1.dept from emp e1,emp e2 where e1.esal>e2.esal and e2.dept='sales'


select*from emp

update emp set esal=20000 where dept='dgm'

select*from emp

update emp set ename='z' where esal=20000
select*from emp

alter table emp alter column esal varchar(20)


sp_rename 'emp.esal','salary'

alter database myemp modify name=myinfo


use myemp

use myinfo

select*from emp where salary>any(select salary from emp where dept='sales')

select*from emp where salary>all(select salary from emp where dept='sales')

select*from emp


select*from emp order by salary asc

select count(sno) from emp

select sno,ename from emp where salary between 100 and 500


select sum(sno) from emp

select sum(salary)  from emp

alter table emp alter column salary int
select sum(salary) from emp

select*from emp where ename like '_d%'

select*from emp where ename like'%a_'

select*from emp where ename like'a%_'


