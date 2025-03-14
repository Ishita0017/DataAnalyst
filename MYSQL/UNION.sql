#UNIONS

SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary;

# UNION on same column

SELECT first_name,last_name
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary;

#UNION use Distinct by default

SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name,last_name
FROM employee_salary;

#UNION ALL

SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name,'Old Man' as Label
FROM employee_demographics
WHERE age > 40 and gender='Male'
UNION 
SELECT first_name,last_name,'Old Lady' as Label
FROM employee_demographics
WHERE age > 40 and gender='Female'
UNION 
SELECT first_name,last_name,'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary > 70000
order by first_name,last_name; 
