#Temporary Tables

#Temporary table you can use over and over again  but if you close tab(sesssion) and come back you can't see the table 
CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
);
select * from temp_table;
insert into temp_table
values('Ishita','patel','ABC');

select * from temp_table;

create temporary table salary_over_50k
select * from employee_salary where salary >= 50000;

select * from salary_over_50k;