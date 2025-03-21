#Stroed procedures

select * from employee_salary
where salary >=50000;


Create procedure large_salaries()
select * from employee_salary
where salary >=50000;

call large_salaries();

#Delimiter example
DELIMITER $$
Create procedure large_salaries3()
BEGIN
select * from employee_salary
where salary >=50000;
select * from employee_salary
where salary >=10000;
END $$
DELIMITER ;

call large_salaries3()

#parameter example
DELIMITER $$
Create procedure large_salaries4(emp_id int)
BEGIN
select salary from employee_salary
where employee_id=emp_id;
END $$
DELIMITER ;

call large_salaries4(1)