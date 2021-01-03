WITH daily_purchase AS (
    SELECT
        dt
      , substring(dt, 1, 4) AS year
      , substring(dt, 6, 2) AS month
      , SUM(purchase_amount) AS daily_total
    FROM
        purchase_log02
    GROUP BY
        dt
)

SELECT
    dt
  , concat(year, '_', month) AS year_month
  , daily_total
  , SUM(daily_total) OVER(PARTITION BY year, month
                        ORDER BY dt
                        ROWS BETWEEN UNBOUNDED PRECEDING
                        AND CURRENT ROW) AS daily_cum_total_by_month
FROM
    daily_purchase
ORDER BY
    dt
;