CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      WITH cye AS (
  SELECT
    *,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
  FROM
    Employee
)
SELECT
  MAX(salary) AS SecondHighestSalary -- Use MAX() to return a single NULL if no rows are found
FROM
  cye
WHERE
  rnk = n

  );
END