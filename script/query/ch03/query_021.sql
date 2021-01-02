SELECT
    user_id
  , register_stamp::timestamp AS register_stamp
  , register_stamp::timestamp + '1 hour'::interval AS register_timestamp_after_1hour
  , register_stamp::timestamp + '1 day'::interval AS register_timestamp_after_1day
  , register_stamp::date AS register_date
  , (register_stamp::date + '1 day'::interval)::date AS register_date_after_1day
  , (register_stamp::date + '1 month'::interval)::date AS register_date_after_1month
  FROM mst_users_with_birthday
;