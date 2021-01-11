WITH A AS (
SELECT
    CAST(stamp AS timestamp) AS stamp
  , CAST(substring(stamp, 1, 10) AS date) AS stamp_date
FROM
    access_log
)

, B AS (
    SELECT
        UNNEST(ARRAY['2016-08-26'::date,
                     '2016-08-27'::date,
                     '2016-08-28'::date]) AS date
)

, C AS (
SELECT
    date
  , stamp
  , stamp_date
FROM
    B
LEFT JOIN A
    ON A.stamp_date = B.date
)

, D AS (
SELECT
    date
  , COUNT(stamp) AS count
FROM
    C
GROUP BY
    date
ORDER BY
    date
)

, E AS (
SELECT
    generate_series(MIN(count), MAX(count), 1) AS counts
FROM
    D
)

SELECT
    counts
  , COALESCE(count, 0) AS count_per_user
FROM
    E
LEFT JOIN
    D
    ON D.count=E.counts
;