WITH monthly_sales AS (
    SELECT
        category
      , SUM(price) AS category_amount
    FROM
        purchase_detail_log
    WHERE
        dt BETWEEN '2015-12-01' AND '2015-12-31'
    GROUP BY
        category
)

SELECT
    category
  , category_amount
  , 100 * category_amount / SUM(category_amount) OVER() AS ratio
  , 100 * SUM(category_amount)
        OVER(ORDER BY category_amount DESC
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW)
        / SUM(category_amount) OVER() AS cum_ratio

FROM
    monthly_sales
ORDER BY
    category_amount DESC
;