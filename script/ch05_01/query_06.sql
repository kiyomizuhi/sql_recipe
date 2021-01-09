WITH today_bday AS (
    SELECT
        user_id
      , sex
      , birth_date
      , 20210109 AS int_today
      , CAST(REPLACE(birth_date, '-', '') AS INTEGER) AS int_bday
    FROM
        mst_users
)

, with_age AS (
    SELECT
        user_id
      , sex
      , birth_date
      , FLOOR((int_today - int_bday) / 10000) AS age
    FROM
        today_bday
)

, with_category AS (
    SELECT
        user_id
      , sex
      , birth_date
      , CONCAT(
            CASE
                WHEN age >= 20 THEN sex
                ELSE ''
                END
            ,
            CASE
                WHEN age BETWEEN  4 AND 12 THEN 'C'
                WHEN age BETWEEN 13 AND 19 THEN 'T'
                WHEN age BETWEEN 20 AND 34 THEN '1'
                WHEN age BETWEEN 35 AND 49 THEN '2'
                WHEN age >= 50 THEN '3'
                ELSE ''
                END
        ) AS category
    FROM
        with_age
)

, categories AS(
SELECT
    UNNEST(ARRAY['C', 'T',
                 'M1', 'M2', 'M3',
                 'F1', 'F2', 'F3']) AS category
)

SELECT
    c1.category
  , COALESCE(c2.count, 0) AS count
FROM
    categories AS c1
LEFT JOIN
    (SELECT
        category
      , COUNT(1) AS count
    FROM
        with_category
    GROUP BY
        category
    ) AS c2
    ON c1.category=c2.category
ORDER BY
    c1.category
;