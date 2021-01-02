SELECT
    m.user_id
  , m.has_card
  , CASE
        WHEN p.num_purchase IS NULL THEN 0
        ELSE 1
        END AS has_purchase
FROM
    (
    SELECT
        user_id
      , CASE
            WHEN card_number IS NULL THEN 0
            ELSE 1
            END AS has_card
    FROM mst_users_with_card_number
    ) AS m
LEFT JOIN
    (
    SELECT
        user_id
      , COUNT(purchase_id) AS num_purchase
    FROM
        purchase_log
    GROUP BY
        user_id
    ) AS p
    ON m.user_id=p.user_id
