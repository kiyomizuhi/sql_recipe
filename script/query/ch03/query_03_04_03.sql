SELECT
    m.category_id
  , m.name
  , (
        SELECT
            s.sales
        FROM
            category_sales AS s
        WHERE
            m.category_id=s.category_id
    ) AS sales
  , (
        SELECT
            r.product_id
        FROM
            product_sale_ranking AS r
        WHERE
            m.category_id=r.category_id
            AND r.rank=1
    ) AS top_sale_product
FROM
    mst_categories AS m
;