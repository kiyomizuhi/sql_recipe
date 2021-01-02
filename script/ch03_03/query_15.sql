SELECT
    purchase_id
  , product_id
FROM
    purchase_log2 AS p
CROSS JOIN
    UNNEST(string_to_array(product_ids,',')) AS product_id