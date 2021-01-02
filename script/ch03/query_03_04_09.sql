WITH mst_devices(device_id, device_name) AS (
    VALUES
        (1, 'PC')
      , (2, 'SP')
      , (3, 'APP')
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