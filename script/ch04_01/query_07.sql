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

, z_plot AS (
    SELECT
        year
      , month
      , monthly_total
      , SUM(monthly_total) OVER(PARTITION BY year
                                    ORDER BY year, month
                                    ROWS BETWEEN 11 PRECEDING
                                    AND CURRENT ROW) AS year_cum_total
      , SUM(monthly_total) OVER(ORDER BY year, month
                                    ROWS BETWEEN 11 PRECEDING
                                    AND CURRENT ROW) AS twelve_months_total
    FROM
        monthly_purchase
)

SELECT
    year
  , month
  , monthly_total
  , year_cum_total
  , twelve_months_total
FROM
    z_plot
WHERE
    year='2015'
ORDER BY
    year, month