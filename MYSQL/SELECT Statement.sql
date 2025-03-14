-- SELECT STATEMENET

SELECT * 
FROM parks_and_recreation.employee_demographics;


# selecting a specific column
SELECT first_name
FROM employee_demographics;



# add some more columns,  need to separate the columns with columns
SELECT first_name, last_name
FROM employee_demographics;



SELECT last_name, first_name, gender, age
FROM employee_demographics;

# SQL queries formatted like this.
SELECT last_name, 
first_name, 
gender, 
age
FROM employee_demographics;

# calculation in the select statement

#perform calculations on total_money_spent
SELECT first_name,
 last_name,
 total_money_spent,
 total_money_spent + 100
FROM customers;



#Math in SQL does follow PEMDAS which stands for Parenthesis, Exponent, Multiplication,
#Division, Addition, subtraction - it's the order of operation for math

#For example - What will the output be?:
SELECT first_name, 
last_name,
salary,
salary + 100
FROM employee_salary;
#This is going to do 10* 100 which is 1000 and then adds the original 540

#Now what will the output be when we do this?
SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;


# Pemdas

# DISTINCT Statement - this will return only unique values in The output - and won't have any duplicates

SELECT department_id
FROM employee_salary;

SELECT DISTINCT department_id
FROM employee_salary;

