# WHERE Clause

# Show output only with name 'Leslie'
SELECT * 
From employee_salary
Where first_name='Leslie';

#show output whose salary > 50000
SELECT * 
From employee_salary
Where salary>50000;

#show output whose salary < 50000
SELECT * 
From employee_salary
Where salary<50000;

#show output whose salary <= 50000
SELECT * 
From employee_salary
Where salary<=50000;

#Gender != 'Female'
SELECT * 
From employee_demographics
Where gender!='Female';

#AND OR NOT logical Operators
SELECT * 
From employee_demographics
Where birth_date> '1985-01-01'
OR NOT gender ='male';
 
 SELECT * 
From employee_demographics
Where (first_name='Leslie' AND age=44) OR age > 55;

#LIKE Statement

SELECT * 
From employee_demographics
Where first_name LIKE 'Jer%';

# LIKE Statement with %

SELECT * 
From employee_demographics
Where first_name LIKE '%a%';

# LIKE Statement with % and _

SELECT * 
From employee_demographics
Where first_name LIKE 'a___%';

SELECT * 
From employee_demographics
Where birth_date LIKE '1989%';