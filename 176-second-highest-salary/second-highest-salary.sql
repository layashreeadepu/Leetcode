WITH cye AS (
  SELECT
    *,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
  FROM
    Employee
)
SELECT
  MAX(salary) AS SecondHighestSalary
FROM
  cye
WHERE
  rnk = 2;