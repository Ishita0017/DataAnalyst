#Window Functions

select gender,avg(salary) as avg_salary
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id
group by gender;

#Over window function
select gender,avg(salary) over()
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
#over window function with partition

select gender,avg(salary) over(partition by gender)
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
    
#over window function with partition and adding few more column to get output

select dem.first_name,dem.last_name,gender,avg(salary) over(partition by gender)
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;

#Over window function with rolling total
select dem.first_name,dem.last_name,gender,salary,sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
#Row_number() provide unique number like ID
select dem.first_name,dem.last_name,gender,salary,
Row_number() over()
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
#Row_number() provide unique number like ID Partition by gender
select dem.first_name,dem.last_name,gender,salary,
Row_number() over(partition by gender order by salary desc)
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;

#Row_number() and RANK() provide unique number like ID Partition by gender
select dem.first_name,dem.last_name,gender,salary,
Row_number() over(partition by gender order by salary desc) as row_num,
Rank() over(partition by gender order by salary desc) as rank_num
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
#Row_number() and RANK() , Dense_rank() provide unique number like ID Partition by gender
select dem.first_name,dem.last_name,gender,salary,
Row_number() over(partition by gender order by salary desc) as row_num,
Rank() over(partition by gender order by salary desc) as rank_num,
dense_Rank() over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics dem
Join employee_salary sal
	ON dem.employee_id=sal.employee_id;