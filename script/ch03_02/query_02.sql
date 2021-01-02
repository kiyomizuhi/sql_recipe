SELECT
    year
  , q1
  , q2
  , CASE
      WHEN q1 < q2 THEN '+'
      WHEN q1 = q2 THEN '='
      ELSE '-'
    END AS judge_q1_q2
  , SIGN(q2 - q1) AS sign_q1_q2
  FROM
    quarterly_sales
  ORDER BY
    year
;
    