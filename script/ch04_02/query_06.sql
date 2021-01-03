WITH daily_category_amount_december AS (
    SELECT
        dt
      , category
      , SUM(price) AS category_amount
    FROM
        purchase_detail_log
    WHERE
        dt BETWEEN '2015-12-01' AND '2015-12-31'
    GROUP BY
        dt, category
)

SELECT
    category
  , dt
  , category_amount
  , FIRST_VALUE(category_amount) OVER(PARTITION BY category ORDER BY dt) AS base_amount
  , 100 * category_amount
        / FIRST_VALUE(category_amount) OVER(PARTITION BY category ORDER BY dt) AS ratio
FROM
    daily_category_amount_december
ORDER BY
    category, dt
;