# Joins in SQL

SELECT *
FROM employee_demographics;    

SELECT *
FROM employee_salary;

# Inner Join - common rows frm both columns in both tables

SELECT dem.employee_id , age , occupation
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
# Outer Joins - Right and Left Joins 

SELECT * 
FROM employee_demographics dem 
RIGHT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
 # Self Join - tie table to itself
 SELECT emp1.employee_id AS emp_santa,
 emp1.first_name AS first_name_santa,
 emp1.last_name AS last_name_santa,
 emp2.employee_id AS emp_name,
 emp2.first_name AS first_name_emp,
 emp2.last_name AS last_name_emp
 FROM employee_salary emp1
 JOIN employee_salary emp2
		ON emp1.employee_id + 1 = emp2.employee_id; 
 
 # Joining MUltiple Tables
 
 SELECT * 
 FROM employee_demographics dem 
 RIGHT JOIN employee_salary sal    # all data from sal 
	ON dem.employee_id = sal.employee_id
 INNER JOIN parks_department pd
	ON sal.dept_id = pd.department_id;