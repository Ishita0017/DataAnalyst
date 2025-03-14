#CTE

#CTE select always right immidiate after
with CTE_example as (
SELECT gender,avg(salary) avg_sal,max(salary) max_sal,MIN(salary) min_sal,COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender)
select avg(avg_sal) from CTE_Example;

#multiple CTE

with CTE_example as (
SELECT employee_id,gender,birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_example2 AS
(select employee_id,salary
from employee_salary
where salary > 50000
)
select * from CTE_example
join CTE_example2
on CTE_example.employee_id=CTE_example2.employee_id;


# Overright column name by defining first
with CTE_example(Gender,AVG_SAL,MAX_SAL,MIN_SAL,COUNT_SAL) as (
SELECT gender,avg(salary) avg_sal,max(salary) max_sal,MIN(salary) min_sal,COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender)
select * from CTE_Example;