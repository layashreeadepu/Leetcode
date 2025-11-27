# Write your MySQL query statement below
select distinct
p.product_id, 
p.product_name
from Product p
join Sales s
on s.product_id = p.product_id
where s.sale_date between '2019-01-01' and '2019-03-31'
and s.product_id not in (select s1.product_id from Sales s1 where s1.sale_date not between '2019-01-01' and '2019-03-31') 

