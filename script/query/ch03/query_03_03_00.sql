SELECT
    COUNT(*) AS total_count
  , COUNT(DISTINCT user_id) AS user_count
  , COUNT(DISTINCT product_id) AS product_count
  , SUM(score) AS score_sum
  , AVG(score) AS score_avg
  , MAX(score) AS score_max
  , MIN(score) AS score_min
  FROM
    review
;