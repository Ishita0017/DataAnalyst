
#Group By 

# group by gender

SELECT gender
FROM employee_demographics
GROUP BY gender;

#Below query shows all different value of ocupation and salary 
SELECT occupation,salary
FROM employee_salary
GROUP BY occupation, salary;

#group by with aggregate function AVG, MAX, MIN, COUNT

SELECT gender,AVG(age) , MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

#ORDER BY bydefault ASE

SELECT *
FROM employee_demographics
ORDER BY first_name ;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

#DESCENDING order using keyword DESC
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

#ORDER BY using column position -- not ideal

SELECT *
FROM employee_demographics
ORDER BY 5, 4 DESC;



