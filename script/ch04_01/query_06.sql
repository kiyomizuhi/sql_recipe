WITH daily_purchase AS (
    SELECT
        dt
      , substring(dt, 1, 4) AS year
      , substring(dt, 6, 2) AS month
      , SUM(purchase_amount) AS daily_total
    FROM
        purchase_log05
    GROUP BY
        dt
)

SELECT
    month
  , SUM(CASE year WHEN '2014' THEN daily_total END) AS amount_2014
  , SUM(CASE year WHEN '2015' THEN daily_total END) AS amount_2015
  , 100.0 * SUM(CASE year WHEN '2014' THEN daily_total END)
          / SUM(CASE year WHEN '2015' THEN daily_total END) AS ratio
FROM
    daily_purchase
GROUP BY
    month
ORDER BY
    month
;