SELECT
    purchase_id
  , REGEXP_SPLIT_TO_TABLE(product_ids, ',') AS product_id
FROM
    purchase_log2
;