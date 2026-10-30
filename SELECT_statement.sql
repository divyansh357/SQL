SELECT first_name,
last_name,
birth_date
age,
(age+10) *10 +10
FROM parks_and_reacreation.employee_demographics;

# slect DISTINCT columns
SELECT DISTINCT gender 
FROM  parks_and_reacreation.employee_demographics;