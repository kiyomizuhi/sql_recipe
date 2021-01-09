WITH today_bday AS (
    SELECT
        user_id
      , sex
      , birth_date
      , 20210109 AS int_today
      , CAST(REPLACE(birth_date, '-', '') AS INTEGER) AS int_bday
    FROM
        mst_users
)

SELECT
    user_id
  , sex
  , birth_date
  , FLOOR((int_today - int_bday) / 10000) AS age
FROM
    today_bday
;


