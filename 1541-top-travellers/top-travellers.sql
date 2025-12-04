# Write your MySQL query statement below
select s.name, ifnull(sum(distance),0) as travelled_distance
from Rides r
right join Users s
on s.id = r.user_id
group by s.id
order by travelled_distance desc, name asc