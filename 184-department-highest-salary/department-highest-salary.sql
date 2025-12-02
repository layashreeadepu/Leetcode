# Write your MySQL query statement below
with cte as ( 
    select 
    d.name as deptname, 
    e.name as empname, 
    e.salary,
    dense_rank() over (partition by departmentId order by salary desc) as rnk
        from Employee e
        left join Department d
        on d.id = e.departmentId
)
select deptname as Department,
empname as Employee,
salary as Salary 
from cte
where rnk = 1