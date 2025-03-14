#String Functions

#Length function

SELECT length('Ishita');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

# UPPER

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT RTRIM('          sky           ');

#LEFT  and RIGHT
SELECT first_name,LEFT(first_name,4)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name,4),
RIGHT(last_name,4)
FROM employee_demographics;

#SUBSTRING
SELECT first_name,
LEFT(first_name,4),
RIGHT(last_name,4),
SUBSTRING(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
FROM employee_demographics;

#replace
SELECT first_name, 
REPLACE(first_name,'a','z')
FROM employee_demographics;

#LOCATE

SELECT first_name, 
LOCATE('An',first_name)
FROM employee_demographics;

#CONCAT

SELECT first_name, last_name,
CONCAT(first_name,' ' ,last_name) as Full_name
FROM employee_demographics;
