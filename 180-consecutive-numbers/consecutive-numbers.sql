# Write your MySQL query statement below
with cte as (
select id, num,
lag(num) over (order by id) as prev_num,
lead(num) over (order by id) as next_num
from Logs
)
select distinct num as ConsecutiveNums
from cte 
where num = prev_num and num = next_num