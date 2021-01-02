SELECT
    ip
  , CAST(split_part(ip, '.', 1) AS INTEGER) AS ip_addr1
  , CAST(split_part(ip, '.', 2) AS INTEGER) AS ip_addr2
  , CAST(split_part(ip, '.', 3) AS INTEGER) AS ip_addr3
  , CAST(split_part(ip, '.', 4) AS INTEGER) AS ip_addr4
  FROM
    (SELECT CAST('127.1.2.3' AS text) AS ip) AS t