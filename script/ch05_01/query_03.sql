WITH action_log_with_member_status AS (
    SELECT
        session
      , user_id
      , action
      , category
      , products
      , amount
      , stamp
      , CASE
            WHEN COALESCE(MAX(user_id) OVER(PARTITION BY session ORDER BY stamp
                                            ROWS BETWEEN UNBOUNDED PRECEDING
                                            AND CURRENT ROW)
                        , '') <> '' THEN 'member'
            ELSE 'guest'
            END AS member_status
    FROM
        action_log
)

SELECT
    COALESCE(action, '0all') AS action
  , COALESCE(member_status, '0all') AS member_status
  , COUNT(1) As action_count
  , COUNT(DISTINCT session) As action_uu
FROM
    action_log_with_member_status
GROUP BY
    ROLLUP(action, member_status)
ORDER BY
    action DESC, member_status DESC
;