#CASE Statements

SELECT first_name,last_name,age,
CASE 
	WHEN age<=30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
    WHEN age >=50 THEN "On Death's Door"
END AS Age_Bracket
FROM employee_demographics;


#PAy increase and Bonus
#< 50000 = 5%
#> 50000 = 7%
# Finance= 10% 

SELECT first_name,last_name,salary,
CASE
	when salary < 50000 then salary + (salary* 0.05)
    when salary > 50000 then salary + (salary* 0.07)
END as New_Salary,
CASE
	WHEN dept_id=6 then salary * 0.10
END as bonus
FROM employee_salary;

select *
from employee_salary;
select * 
from parks_departments;