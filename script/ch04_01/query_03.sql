SELECT
    dt
  , substring(dt, 1, 7) AS year_month
  , SUM(purchase_amount) AS daily_total
  , SUM(SUM(purchase_amount)) OVER(PARTITION BY substring(dt, 1, 7)
                                ORDER BY dt
                                ROWS BETWEEN UNBOUNDED PRECEDING
                                AND CURRENT ROW) AS daily_cum_total
FROM
    purchase_log02
GROUP BY
    dt
ORDER BY
    dt
;