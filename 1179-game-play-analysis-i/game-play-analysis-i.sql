# Write your MySQL query statement below
with cte as (select *,
rank() over (partition by player_id order by event_date asc) as rnk
from Activity)
select 
player_id,
event_date as first_login
from cte
where rnk = 1