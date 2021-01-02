SELECT
    dt
  , ad_id
  , clicks
  , impressions
  , clicks / impressions AS ctr
  , CAST(clicks AS double precision) / impressions AS ctr_double
  , 100 * clicks / impressions AS ctr_perc
  , 100 * CAST(clicks AS double precision) / impressions AS ctr_perc_double
  FROM 
    advertising_stats
 WHERE
    dt = '2017-04-01'
 ORDER BY
    dt, ad_id
;