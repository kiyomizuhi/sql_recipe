SELECT
    user_id,
    CURRENT_DATE AS today,
    register_stamp :: date AS register_date,
    birth_date :: date AS birthday,
    age(birth_date :: date) AS age,
    EXTRACT(
        YEAR
        FROM
            age(birth_date :: date)
    ) AS age_year,
    EXTRACT(
        MONTH
        FROM
            age(birth_date :: date)
    ) AS age_month,
    EXTRACT(
        DAY
        FROM
            age(birth_date :: date)
    ) AS age_day
FROM
    mst_users_with_birthday;