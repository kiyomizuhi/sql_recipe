SELECT
    stamp
  , substring(t.stamp, 1, 4) AS year
  , substring(t.stamp, 6, 2) AS month
  , substring(t.stamp, 9, 2) AS day
  , substring(t.stamp, 12, 2) AS hour
  , substring(t.stamp, 1, 7) AS year_month
 FROM (SELECT
        CAST('2016-12-23 11:22:33' AS text) AS stamp
    ) AS t
;