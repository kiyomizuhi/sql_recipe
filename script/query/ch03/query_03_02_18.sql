SELECT
    ip
  , lpad(split_part(ip, '.', 1), 3, '0')
  || lpad(split_part(ip, '.', 2), 3, '0') 
  || lpad(split_part(ip, '.', 3), 3, '0')
  || lpad(split_part(ip, '.', 4), 3, '0') AS ip_int 
  FROM
    (SELECT CAST('127.1.2.3' AS text) AS ip) AS t