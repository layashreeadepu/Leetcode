SELECT MAX(salary) as SecondHighestSalary
FROM employee
WHERE salary NOT IN (SELECT MAX(salary) FROM employee)