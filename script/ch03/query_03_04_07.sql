WITH product_sales_ranking AS (
    SELECT
        category_name
      , product_id
      , sales
      , ROW_NUMBER() OVER(PARTITION BY category_name ORDER BY sales DESC) AS rank
    FROM
        product_sales
)

SELECT
    DISTINCT(r1.rank) AS rank
  , r2.product_id AS dvd
  , r2.sales AS dvd_sales
  , r3.product_id AS cd
  , r3.sales AS cd_sales
  , r4.product_id AS book
  , r4.sales AS book_sales
FROM
    product_sales_ranking AS r1
LEFT JOIN
    product_sales_ranking AS r2
    ON r1.rank=r2.rank
    AND r2.category_name='dvd'
LEFT JOIN
    product_sales_ranking AS r3
    ON r1.rank=r3.rank
    AND r3.category_name='cd'
LEFT JOIN
    product_sales_ranking AS r4
    ON r1.rank=r4.rank
    AND r4.category_name='book'
ORDER BY
    rank
;