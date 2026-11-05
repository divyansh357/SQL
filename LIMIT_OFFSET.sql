# LIMIT AND ALIASING

SELECT * 
FROM employee_demographics
LIMIT 3;

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1; # offset(leave that number of values) , limit(number of values to be returned after offset)

# Getting the fourth largest salary
SELECT  DISTINCT salary, employee_id, first_name 
FROM employee_salary e1
WHERE 3=(SELECT COUNT(DISTINCT salary) FROM employee_salary e2 WHERE e2.salary > e1.salary );

# Getting the fourth largest salary
SELECT DISTINCT salary
FROM employee_salary 
ORDER BY salary DESC 
LIMIT 1 OFFSET 3; # this way of explicitly mentioning the LIMIT and OFFSET is preferred to avoid confusion

-- Aliasing 

SELECT gender , AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age >40;
