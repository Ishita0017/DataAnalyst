#Triggers and Events

Select * 
from employee_demographics;

select * 
from employee_salary;

DELIMITER $$
Create Trigger employee_insert
	After Insert on employee_salary
    For each row 
Begin
	insert into employee_demographics(employee_id,first_name,last_name)
    values (New.employee_id, New.first_name, New.last_name);
End $$
Delimiter ;

Insert into employee_salary (employee_id, first_name, last_name, occupation,salary,dept_id)
values(13,'Jean-Ralphio','Saperstein','Entertainment 720 CEO',100000,NULL);


## EVENTS Schedule automatic

Select * 
from employee_demographics;

DELIMITER $$
CREATE Event delete_retires1
ON Schedule every 30 second
do 
begin
	delete
    from employee_demographics
    where age >= 60;
end $$
DElimiter ;

show variables like 'event%';