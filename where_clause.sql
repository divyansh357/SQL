# Where Clause - selected row returned on the basis of condition
 
SELECT * 
FROM employee_salary 
WHERE salary > 50000;

SELECT * 
FROM employee_salary 
WHERE salary >= 50000;

SELECT * 
FROM employee_demographics 
WHERE gender = 'male';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';   # means it will return female  

SELECT * 
FROM employee_demographics
WHERE (first_name ='Leslie' AND age = 44) OR age > 55;

SELECT * 
FROM employee_demographics
WHERE CAST(first_name AS BINARY) = 'Jerry';

# LIKE Operator

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%er%';

 
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%';


# Combination of underscore and %
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';





