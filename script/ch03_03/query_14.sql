SELECT
    ARRAY['A001', 'A002', 'A003'] AS product_ids
  , UNNEST(ARRAY['A001', 'A002', 'A003']) AS product_id;