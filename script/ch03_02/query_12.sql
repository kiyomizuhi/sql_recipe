SELECT
    user_id
  , CURRENT_DATE AS today
  , CURRENT_DATE - register_stamp::date AS diff_date
  , CURRENT_DATE - register_stamp::timestamp AS diff_stamp
  FROM mst_users_with_birthday
;