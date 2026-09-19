-- CTE

WITH CTE_EXAMPLE AS
(
SELECT gender,AVG(Salary)avg_sal,MAX(salary) max_sal, MIN(Salary)min_sal,count(salary) count_sal
from employee_demographics dem
Join employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_example;