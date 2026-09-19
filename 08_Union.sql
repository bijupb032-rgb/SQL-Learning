-- Union 

SELECT first_name,last_name
FROM employee_demographics
UNION 
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name,'old man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION

SELECT first_name,last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name,last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40  AND gender = 'Female'
UNION 
SELECT first_name,last_name,'Highly paid label' AS Label
FROM employee_salary
WHERE Salary > 70000;

SELECT first_name,last_name, "Old man" AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION
SELECT first_name,last_name,"old lady " AS lablel
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION 
SELECT first_name,last_name, 'Highly paid' AS Label
FROM employee_salary
WHERE salary > 75000;




