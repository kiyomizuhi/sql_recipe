WITH mst_devices AS (
    SELECT
        t.d[0] AS device_id
      , t.d[1] AS device_name
    FROM
        (SELECT
            UNNEST(
                ARRAY[
                    ARRAY['1', 'PC']
                  , ARRAY['2', 'SP']
                  , ARRAY['3', 'APP']
                ]
            ) d
        ) AS t
)

SELECT
    u.user_id
  , d.device_name
FROM
    mst_users AS u
LEFT JOIN
    mst_devices AS d
    ON u.register_device=d.device_id
;