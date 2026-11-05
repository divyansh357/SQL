# the selected columns should be grouped by
SELECT gender , AVG(age) , SUM(age) , MIN(age) , MAX(age) , COUNT(age)
FROM employee_demographics
GROUP BY gender;

# when grouped on two  or more columns it returns unique combination of these columns
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation , salary;

# ORDER BY

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY gender , age DESC;  # DESC only applicable for age not for gender 

SELECT *
FROM employee_demographics
ORDER BY age DESC, gender; # group by gender becomes useless
