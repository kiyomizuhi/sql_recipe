SELECT
    dt
  , AVG(SUM(purchase_amount)) OVER(ORDER BY dt
                                ROWS BETWEEN 6 PRECEDING
                                AND CURRENT ROW) AS seven_day_avg
  , CASE
        WHEN 7=COUNT(*) OVER(ORDER BY dt
                            ROWS BETWEEN 6 PRECEDING
                            AND CURRENT ROW)
        THEN AVG(SUM(purchase_amount)) OVER(ORDER BY dt
                                ROWS BETWEEN 6 PRECEDING
                                AND CURRENT ROW)
        END AS strictly_seven_day_avg
FROM
    purchase_log01
GROUP BY
    dt
ORDER BY
    dt
