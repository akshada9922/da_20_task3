select * from emp 

--IN QUERY

select * from emp
select * from emp where age in (20,25,21);
select * from emp where present_days in (23,20,18);
select * from emp where name in ('rohan sharma' ,'aman gupta','sneha sharma');
select * from emp where experience in ('fresher');
select * from emp where status in ('resigned','on leave');

--BETWEEN

select * from emp
select * from emp where age between 20 and 25;
select * from emp where present_days between 18 and 25;
select * from emp where id between 102 and 110;
select * from emp where name between 'a' and 's' ;
select * from emp where department between 'hr' and 'it';

--LIMIT

select * from emp
select * from emp where age = 20 limit 1;
select * from emp where name = 'rohan sharma' limit 1;
select * from emp where department = 'it' limit 3;
select * from emp where experience = 'fresher' limit 2;
select * from emp where status = 'active' limit 4;

--ORDERBY

select * from emp
select * from emp order by age desc;
select * from emp order by department asc;
select * from emp order by experience desc;
select * from emp order by id desc;
select * from emp order by status asc;

--CHECK CONSTRAINTS

select * from emp
alter table emp add constraint age_check check (age>= 25 or age <= 30);
alter table emp add constraint id_check check (id between 105 and 110) not valid;
alter table emp add constraint present_days_check check (present_days between 18 and 25) not valid;
alter table emp add constraint experience_check check ( experience in ('fresher', 'experienced'));
alter table emp add constraint name_check check (name is not null) not valid;

select * from emp
