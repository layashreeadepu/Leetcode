# Write your MySQL query statement below
    SELECT
        sell_date,
        count(distinct product) as num_sold,
        GROUP_CONCAT(distinct product ORDER BY product ASC SEPARATOR ',') AS products
    FROM
        Activities
    GROUP BY
        sell_date;