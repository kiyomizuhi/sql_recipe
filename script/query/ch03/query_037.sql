SELECT
    product_id
  , category
  , ROW_NUMBER() OVER(PARTITION BY category ORDER BY score DESC) AS row
  , RANK() OVER(PARTITION BY category ORDER BY score DESC) as rank
  , DENSE_RANK() OVER(PARTITION BY category ORDER BY score DESC) as dense_rank
  FROM
    popular_products
 ORDER BY
    category, row
;
