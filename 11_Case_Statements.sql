-- Case Statements

SELECT first_name,
last_name,
age,
CASE
    WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Middle age'
    WHEN age >= 50 THEN 'Old' 
END AS Age_Bracket
FROM employee_demographics;


-- Pay Increase amd Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus


SELECT first_name,last_name, salary,
CASE
   WHEN salary < 50000 THEN Salary * 1.05
   WHEN salary > 50000 THEN Salary * 1.07
END AS New_Salary,
CASE
    WHEN dept_id = 6 THEN Salary * 10
END AS Bonus
FROM employee_salary;

SELECT *
FROM employee_salary;
SELECT * 
FROM parks_departments;