WITH cte AS (
    SELECT
        player_id,
        event_date,
        LEAD(event_date) OVER (PARTITION BY player_id ORDER BY event_date) AS next_login,
        DATE_ADD(event_date, INTERVAL 1 DAY) AS next_day,
        MIN(event_date) OVER (PARTITION BY player_id) AS first_login_date
    FROM
        Activity
)
SELECT 
    ROUND(
            (
            SELECT 
                COUNT(DISTINCT player_id)
            FROM 
                cte
            WHERE 
                event_date = first_login_date 
                AND 
                next_login = next_day
        )
        * 1.0 /
        (SELECT COUNT(DISTINCT player_id) FROM Activity) 
    , 2) AS fraction;