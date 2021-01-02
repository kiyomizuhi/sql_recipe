SELECT
    CAST('127.0.0.1' AS inet) << CAST('127.0.0.5' AS inet) AS is_contained1
  , CAST('127.0.0.1' AS inet) << CAST('127.0.0.1/8' AS inet) AS is_contained2
;