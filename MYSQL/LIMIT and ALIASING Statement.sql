
# Limit & Aliasing

SELECT * 
FROM employee_demographics
LIMIT 3;

#LIMIT with ORDER BY
SELECT * 
FROM employee_demographics
ORDER BY age
LIMIT 3;

#LIMIT with ORDER BY and give LIMIT start position and howmany position value we want
SELECT * 
FROM employee_demographics
ORDER BY age
LIMIT 2,1;

#ALiasing ( just changing column name and use that name later in all the filtering query)
SELECT gender ,AVG(age) as avg_age
FROM employee_demographics
GROUP BY gender
Having avg_age > 40;