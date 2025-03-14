# Joins

SELECT * 
FROM employee_demographics;

SELECT *
FROM employee_salary;

#Inner join - common join  return rows which are same in both tables BY default inner join

SELECT * 
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;

#Inner join with alias

SELECT * 
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

#Inner join with selected columns

SELECT dem.employee_id,age,occupation 
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

#outer joins - 2 types 1. left outer join 2. right outer join

SELECT * 
FROM employee_demographics dem
LEFT OUTER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

#SELF JOIN 

SELECT *
FROM  employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id = emp2.employee_id;

SELECT *
FROM  employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id +1 = emp2.employee_id;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
FROM  employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id +1 = emp2.employee_id;

#Joining multiple tables together

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

SELECT * 
FROM parks_departments;

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
ON sal.dept_id= pd.department_id ;