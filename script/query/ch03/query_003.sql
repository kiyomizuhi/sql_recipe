SELECT
    stamp
  , substring(referrer from 'https?://([^/]*)') AS referrer_host
  FROM access_log
;