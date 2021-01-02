SELECT
    stamp
  , url
  , substring(url from '//[^/]+([^?#]+)') AS path
  , substring(url from 'id=([^&]*)') AS id
  FROM access_log
;