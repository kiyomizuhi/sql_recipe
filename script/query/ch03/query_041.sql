SELECT
    purchase_id
  , string_agg(product_id, ',') AS product_ids
  , SUM(price) AS amount
  FROM
    purchase_detail_log
 GROUP BY
    purchase_id
 ORDER BY
    purchase_id
;