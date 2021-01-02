SELECT
    product_id
  , ROW_NUMBER() OVER(ORDER BY score DESC) AS row
  , array_agg(product_id) OVER(ORDER BY score DESC
                               ROWS BETWEEN UNBOUNDED PRECEDING
                                        AND UNBOUNDED FOLLOWING) as whole_agg
  , array_agg(product_id) OVER(ORDER BY score DESC
                               ROWS BETWEEN UNBOUNDED PRECEDING
                                        AND CURRENT ROW) as cum_agg
  , array_agg(product_id) OVER(ORDER BY score DESC
                               ROWS BETWEEN 1 PRECEDING
                                        AND 1 FOLLOWING) as mov_agg
  FROM
    popular_products
 WHERE
    category = 'action'
;
 