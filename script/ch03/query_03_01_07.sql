SELECT
    EXTRACT(YEAR FROM t.stamp) AS year
  , EXTRACT(MONTH FROM t.stamp) AS month
  , EXTRACT(DAY FROM t.stamp) AS day
  , EXTRACT(HOUR FROM t.stamp) AS hour
  , EXTRACT(MINUTE FROM t.stamp) AS minute
  , EXTRACT(SECOND FROM t.stamp) AS second
  FROM (SELECT
            CAST('2016-12-23 22:33:44' AS TIMESTAMP) AS stamp
        ) AS t
;