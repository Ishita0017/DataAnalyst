#Subqueries

SELECT * 
FROM  employee_demographics
WHERE employee_id IN
					(SELECT employee_id
                    FROM employee_salary
                    WHERE dept_id =1 )
;

SELECT first_name,salary, (SELECT avg(salary) from employee_salary) 
FROM  employee_salary
;

SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT * 
FROM(
SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender) AS AGG_table;

SELECT gender, AVG(`MAX(age)`) 
FROM(
SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender) AS AGG_table
GROUP BY gender;

SELECT gender, AVG(max_age) 
FROM(
SELECT gender,
AVG(age) as avg_age,
MAX(age) as max_age,
MIN(age) as min_age,
COUNT(age)
FROM employee_demographics
GROUP BY gender) AS AGG_table
GROUP BY gender;