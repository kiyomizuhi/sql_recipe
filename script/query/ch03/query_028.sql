SELECT
    ip
  , CAST(split_part(ip, '.', 1) AS INTEGER) * 2^24 
  + CAST(split_part(ip, '.', 2) AS INTEGER) * 2^16 
  + CAST(split_part(ip, '.', 3) AS INTEGER) * 2^8 
  + CAST(split_part(ip, '.', 4) AS INTEGER) * 2^0 AS ip_int 
  FROM
    (SELECT CAST('127.1.2.3' AS text) AS ip) AS t