WITH total AS (
    SELECT
        COUNT(DISTINCT session) AS total_uu
    FROM
        action_log
)

SELECT
    l.action
  , COUNT(1) AS action_count
  , COUNT(DISTINCT l.session) AS action_uu
  , t.total_uu
  , 100 * COUNT(DISTINCT l.session) / t.total_uu AS usage_rate
  , ROUND(COUNT(1)::NUMERIC / COUNT(DISTINCT l.session), 2) AS action_count_per_user
FROM
    action_log AS l
CROSS JOIN
    total as t
GROUP BY
    l.action, t.total_uu
ORDER BY
    l.action
;