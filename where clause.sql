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






