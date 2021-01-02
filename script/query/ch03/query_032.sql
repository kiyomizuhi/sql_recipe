SELECT
    user_id
  , product_id
  , score
  , AVG(score) OVER() AS score_avg
  , AVG(score) OVER(PARTITION BY user_id) AS score_user_avg
  FROM
    review
;