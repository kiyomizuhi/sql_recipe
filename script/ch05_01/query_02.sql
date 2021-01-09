WITH action_log_with_login_status AS (
    SELECT
        session
      , user_id
      , action
      , category
      , products
      , amount
      , stamp
      , CASE
            WHEN COALESCE(user_id, '') <> '' THEN 'login'
            ELSE 'guest'
            END AS login_status
    FROM
        action_log
)

SELECT
    COALESCE(action, '0all') AS action
  , COALESCE(login_status, '0all') AS login_status
  , COUNT(1) As action_count
  , COUNT(DISTINCT session) As action_uu
FROM
    action_log_with_login_status
GROUP BY
    ROLLUP(action, login_status)
ORDER BY
    action DESC, login_status DESC
;