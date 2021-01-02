SELECT
    product_id
  , category
  , ROW_NUMBER() OVER(PARTITION BY category ORDER BY score DESC) AS row
  , array_agg(product_id) OVER(PARTITION BY category ORDER BY score DESC
                               ROWS BETWEEN UNBOUNDED PRECEDING
                                        AND UNBOUNDED FOLLOWING) as whole_agg
  , array_agg(product_id) OVER(PARTITION BY category ORDER BY score DESC
                               ROWS BETWEEN UNBOUNDED PRECEDING
                                        AND CURRENT ROW) as cum_agg
  , array_agg(product_id) OVER(PARTITION BY category ORDER BY score DESC
                               ROWS BETWEEN 1 PRECEDING
                                        AND 1 FOLLOWING) as mov_agg
  FROM
    popular_products
;
 