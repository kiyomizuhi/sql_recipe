WITH series AS (
    SELECT generate_series(1, 5) AS idx
)

SELECT
    *
FROM
    series
;