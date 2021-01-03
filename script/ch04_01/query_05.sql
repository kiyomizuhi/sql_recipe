WITH daily_purchase AS (
    SELECT
        dt
      , substring(dt, 1, 4) AS year
      , substring(dt, 6, 2) AS month
      , SUM(purchase_amount) AS daily_total
    FROM
        purchase_log04
    GROUP BY
        dt
)

, monthly_purchase AS (
    SELECT
        year
      , month
      , SUM(daily_total) AS monthly_total
    FROM
        daily_purchase
    GROUP BY
        year, month
)

, compare_2014_2015 AS (
    SELECT
        month
    , monthly_total AS monthly_total_2014
    , (SELECT
            monthly_total
        FROM
            monthly_purchase AS mp2
        WHERE
            mp1.month=mp2.month
            AND mp2.year='2015'
        ) AS monthly_total_2015
    FROM
        monthly_purchase AS mp1
    WHERE
        mp1.year='2014'
)

SELECT
    month
  , monthly_total_2014
  , monthly_total_2015
  , 100 * monthly_total_2015 / monthly_total_2014
FROM
    compare_2014_2015
ORDER BY
    month
;