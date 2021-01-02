SELECT
    DISTINCT category
  , FIRST_VALUE(product_id) OVER(PARTITION BY category
                                 ORDER BY score DESC) as product_top1
  , FIRST_VALUE(product_id) OVER(PARTITION BY category
                                 ORDER BY score DESC
                                 ROWS BETWEEN UNBOUNDED PRECEDING
                                          AND UNBOUNDED FOLLOWING) as product_top2
  FROM
    popular_products
;
    