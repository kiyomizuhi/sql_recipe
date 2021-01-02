SELECT
    dt
  , ad_id
  , clicks
  , impressions
  , CASE
      WHEN impressions > 0 THEN 100.0 * clicks / impressions
    END AS ctr_perc
  , 100.0 * clicks / NULLIF(impressions, 0) AS ctr_perc_by_null
  FROM 
    advertising_stats
 ORDER BY
    dt, ad_id
;