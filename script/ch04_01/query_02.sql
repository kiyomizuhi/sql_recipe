SELECT
    dt
  , AVG(SUM(purchase_amount)) OVER(PARTITION BY dt
                                ROWS BETWEEN 6 PRECEDING
                                AND CURRENT ROW)
FROM
    purchase_log
GROUP BY
    dt
ORDER BY
    dt
