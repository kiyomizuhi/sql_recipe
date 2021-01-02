SELECT
    dt
  , COUNT(*) AS purchase_count
  , ROUND(AVG(purchase_amount), 2) AS avg_amount
  , SUM(purchase_amount) AS total_amount
FROM
    purchase_log
GROUP BY
    dt
ORDER BY
    dt
;
