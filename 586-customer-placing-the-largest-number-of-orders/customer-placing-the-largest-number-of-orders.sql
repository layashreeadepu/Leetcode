# Write your MySQL query statement below
with cte as (select count(*) as cnt , customer_number
from Orders
group by customer_number
order by cnt desc
limit 1)
select customer_number from cte