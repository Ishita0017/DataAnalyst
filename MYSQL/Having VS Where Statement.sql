
# Having VS Where

#Regular group by gender 
SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender;

#If we add fiter on aggregated function AVG using where it will give error becuase AVG works after GROUP BY perform so can't use filter using WHERE clause on aggreagate function before group by
SELECT gender , AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;

# IF you want to perform filter on aggregate function you should use HAVING because HAVING perform after Group By
SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

#If you want row level filter and aggregate function filter then perform query like below
SELECT occupation , AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;