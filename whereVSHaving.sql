# HAVING vs WHERE

SELECT gender , AVG(age) # AVG  doesnt work on grouped data which is not calculated
FROM employee_demographics
WHERE AVG(age) >40
GROUP BY gender; # Invalid use of group by function 

# This problem invented HAVING clause - applying any condition after grouping

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40;  # condition after grouping

SELECT occupation , AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' # filter at row level using WHERE
GROUP BY occupation
HAVING AVG(salary) > 65000; # filter at aggregate function lvl using HAVING which must have a group by (prerequistic)
