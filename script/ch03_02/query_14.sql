SELECT
    user_id,
    substring(register_stamp, 1, 10) AS register_date_str,
    replace(substring(register_stamp, 1, 10), '-', '') AS register_date_no_hyphen_str,
    CAST(
        replace(substring(register_stamp, 1, 10), '-', '') AS INTEGER
    ) AS register_date_no_hyphen_int,
    CAST(
        replace(substring(register_stamp, 1, 10), '-', '') AS INTEGER
    ) - CAST(replace(birth_date, '-', '') AS INTEGER) AS date_diff,
    (
        CAST(
            replace(substring(register_stamp, 1, 10), '-', '') AS INTEGER
        ) - CAST(replace(birth_date, '-', '') AS INTEGER)
    ) / 10000 AS date_diff_div_1e4,
    floor(
        (
            CAST(
                replace(substring(register_stamp, 1, 10), '-', '') AS INTEGER
            ) - CAST(replace(birth_date, '-', '') AS INTEGER)
        )
    ) AS date_diff_floor,
    floor(
        (
            CAST(
                replace(substring(register_stamp, 1, 10), '-', '') AS INTEGER
            ) - CAST(replace(birth_date, '-', '') AS INTEGER)
        ) / 10000
    ) AS date_diff_floor_div_1e4,
    CURRENT_DATE AS today,
    floor(
        (
            CAST(
                replace(CAST(CURRENT_DATE AS text), '-', '') AS INTEGER
            ) - CAST(replace(birth_date, '-', '') AS INTEGER)
        ) / 10000
    ) AS date_diff_floor_div_1e4
FROM
    mst_users_with_birthday;