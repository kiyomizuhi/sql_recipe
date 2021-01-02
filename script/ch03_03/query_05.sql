SELECT
    product_id
  , score
  , ROW_NUMBER() OVER(ORDER BY score DESC) AS row
  , SUM(score) OVER(ORDER BY score DESC
                    ROWS BETWEEN UNBOUNDED PRECEDING
                             AND CURRENT ROW) AS score_cum_sum
  , AVG(score) OVER(ORDER BY score DESC
                    ROWS BETWEEN 1 PRECEDING
                             AND 1 FOLLOWING) AS score_move_avg
  , FIRST_VALUE(product_id) OVER(ORDER BY score DESC) AS product_most_popular1
  , FIRST_VALUE(product_id) OVER(ORDER BY score DESC
                    ROWS BETWEEN UNBOUNDED PRECEDING
                             AND UNBOUNDED FOLLOWING) AS product_most_popular2
  , LAST_VALUE(product_id) OVER(ORDER BY score DESC) AS product_least_popular1
  , LAST_VALUE(product_id) OVER(ORDER BY score DESC
                    ROWS BETWEEN UNBOUNDED PRECEDING
                             AND UNBOUNDED FOLLOWING) AS product_least_popular2
  FROM
    popular_products
 ORDER BY
    row
;