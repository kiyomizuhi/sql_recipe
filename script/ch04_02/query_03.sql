SELECT
    COALESCE(category, 'all') AS category
  , COALESCE(sub_category, 'all') AS sub_category
  , SUM(price) AS amount
FROM
    purchase_detail_log
WHERE
    category LIKE '%fashion'
GROUP BY
    category, ROLLUP(sub_category)
;