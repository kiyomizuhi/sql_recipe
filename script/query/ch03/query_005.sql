SELECT
    stamp
  , url
  , split_part(substring(url from '//[^/]+([^?#]+)'), '/', 2) AS path1
  , split_part(substring(url from '//[^/]+([^?#]+)'), '/', 3) AS path2
  FROM access_log
;