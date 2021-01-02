DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('0CVKaz', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('1QceiB', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1hI43A', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
;


DROP TABLE IF EXISTS neighbor_pref; 
CREATE TABLE neighbor_pref(
    pref_id             integer
  , pref_name           varchar(255)
  , neighbor_pref_id    integer
  , neighbor_pref_name  varchar(255)
);

INSERT INTO neighbor_pref
VALUES
    (1, '北海道', 2, '青森県')
  , (2, '青森県', 1, '北海道')
  , (2, '青森県', 3, '岩手県')
  , (2, '青森県', 5, '秋田県')
  , (3, '岩手県', 2, '青森県')
  , (3, '岩手県', 4, '宮城県')
  , (3, '岩手県', 5, '秋田県')
;

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
    rsv_id            integer
  , stamp             varchar(255)
  , member_id         integer
  , member_pref_id    integer
  , member_pref_name  varchar(255)
  , spot_id           integer
  , spot_pref_id      integer
  , spot_pref_name    varchar(255)
);

INSERT INTO reservations
VALUES
    (27414, '2016-12-31 07:36:48', 50063, 21, '岐阜県', 4454, 47, '沖縄県')
  , (27415, '2016-12-31 15:34:21', 43065, 19, '山梨県', 4899, 27, '大阪府')
  , (27416, '2016-12-31 16:05:10', 31038, 6 , '山形県', 7839, 15, '新潟県')
  , (27417, '2016-12-31 17:48:57', 53901, 34, '広島県', 1972, 4 , '宮城県')
  , (27418, '2016-12-31 23:24:33', 54998, 12, '千葉県', 2227, 3 , '岩手県')
  , (27419, '2017-01-01 02:43:20', 34078, 47, '沖縄県', 5522, 12, '千葉県')
  , (27420, '2017-01-01 05:06:10', 53307, 26, '京都府', 6559, 12, '千葉県')
  , (27421, '2017-01-01 08:37:36', 35423, 24, '三重県', 5500, 20, '長野県')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO access_log
VALUES
    ('98900e', 'U001', 'view', '2015-01-01 18:00:00')
  , ('98900e', 'U001', 'view', '2015-01-02 20:00:00')
  , ('98900e', 'U001', 'view', '2015-01-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-04 23:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-05 00:30:00')
  , ('1cf768', 'U002', 'view', '2015-01-06 02:30:00')
  , ('87b575', 'U001', 'view', '2015-01-07 03:30:00')
  , ('87b575', 'U001', 'view', '2015-01-08 04:00:00')
  , ('87b575', 'U001', 'view', '2015-01-09 12:00:00')
  , ('eee2b2', 'U002', 'view', '2015-01-10 13:00:00')
  , ('eee2b2', 'U001', 'view', '2015-01-11 15:00:00')
;


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log
VALUES
    ('98900e', 'U001', 'view', '2016-11-03 18:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 20:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-03 23:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 00:30:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 02:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 03:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 04:00:00')
  , ('87b575', 'U001', 'view', '2016-11-04 12:00:00')
  , ('eee2b2', 'U002', 'view', '2016-11-04 13:00:00')
  , ('eee2b2', 'U001', 'view', '2016-11-04 15:00:00')
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
  ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
, ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
, ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
    ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
  , ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
  , ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS invalid_action_log;
CREATE TABLE invalid_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , category  varchar(255)
  , products  varchar(255)
  , amount    integer
);

INSERT INTO invalid_action_log
VALUES
    ('2016-11-03 18:10:00', '0CVKaz', 'U001', 'purchase', 'drama' , 'D001,D002', 2000)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'favorite', 'drama' , 'D001'     , NULL)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'view'    , NULL    , NULL       , NULL)
  , ('2016-11-03 18:01:00', '0CVKaz', 'U001', 'add_cart', 'drama' , 'D002'     , NULL)
  , ('2016-11-03 18:02:00', '0CVKaz', 'U001', 'add_cart', 'drama' , NULL       , NULL)
  , ('2016-11-04 13:00:00', '1QceiB', 'U002', 'purchase', 'drama' , 'D002'     , 1000)
  , (NULL                 , '1QceiB', 'U002', 'purchase', 'action', 'A005,A006', 1000)
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('989004ea', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('47db0370', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1cf7678e', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
  , ('5eb2e107', 'U004', 'view', '127.0.0.1'     , '2016-11-03 21:00:00')
  , ('fe05e1d8', 'U001', 'view', '216.58.220.238', '2016-11-04 18:00:00')
  , ('87b5725f', 'U005', 'view', '10.0.0.3'      , '2016-11-04 19:00:00')
  , ('5d5b0997', 'U006', 'view', '172.16.0.5'    , '2016-11-04 20:00:00')
  , ('111f2996', 'U007', 'view', '192.168.0.23'  , '2016-11-04 21:00:00')
  , ('3efe001c', 'U008', 'view', '192.0.0.10'    , '2016-11-04 22:00:00')
;


DROP TABLE IF EXISTS mst_categories;
CREATE TABLE mst_categories(
    id     integer
  , name   varchar(255)
  , stamp  varchar(255)
);

INSERT INTO mst_categories
VALUES
    (1, 'ladys_fashion', '2016-01-01 10:00:00')
  , (2, 'mens_fashion' , '2016-01-01 10:00:00')
  , (3, 'book'         , '2016-01-01 10:00:00')
  , (4, 'game'         , '2016-01-01 10:00:00')
  , (5, 'dvd'          , '2016-01-01 10:00:00')
  , (6, 'food'         , '2016-01-01 10:00:00')
  , (7, 'supplement'   , '2016-01-01 10:00:00')
  , (6, 'cooking'      , '2016-02-01 10:00:00')
;


DROP TABLE IF EXISTS dup_action_log;
CREATE TABLE dup_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , products  varchar(255)
);

INSERT INTO dup_action_log
VALUES
    ('2016-11-03 18:00:00', '989004ea', 'U001', 'click', 'D001')
  , ('2016-11-03 19:00:00', '47db0370', 'U002', 'click', 'D002')
  , ('2016-11-03 20:00:00', '1cf7678e', 'U003', 'click', 'A001')
  , ('2016-11-03 21:00:00', '5eb2e107', 'U004', 'click', 'A001')
  , ('2016-11-03 21:00:00', 'fe05e1d8', 'U004', 'click', 'D001')
  , ('2016-11-04 18:00:00', '87b5725f', 'U001', 'click', 'D001')
  , ('2016-11-04 19:00:00', 'eee2bb21', 'U005', 'click', 'A001')
  , ('2016-11-04 20:00:00', '5d5b0997', 'U006', 'click', 'D001')
  , ('2016-11-04 21:00:00', '111f2996', 'U007', 'click', 'D002')
  , ('2016-11-04 22:00:00', '3efe001c', 'U008', 'click', 'A001')
  , ('2016-11-04 22:00:10', '3efe001c', 'U008', 'click', 'A001')
;


DROP TABLE IF EXISTS mst_products_20161201;
CREATE TABLE mst_products_20161201(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20161201
VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B001', 'BBB', 500, '2016-11-03 20:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 400, '2016-11-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
;

DROP TABLE IF EXISTS mst_products_20170101;
CREATE TABLE mst_products_20170101(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20170101
  VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 500, '2016-12-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
  , ('D002', 'DAD', 500, '2016-12-04 19:00:00')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp          varchar(255)
  , short_session  varchar(255)
  , long_session   varchar(255)
  , path           varchar(255)
);

INSERT INTO access_log
VALUES
    ('2016-10-01 12:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '1QceiB', '3JMO2k', '/search')
  , ('2016-10-01 14:00:00', '1QceiB', '3JMO2k', '/detail')
  , ('2016-10-01 15:00:00', '1hI43A', '6SN6DD', '/search')
  , ('2016-10-01 16:00:00', '1hI43A', '6SN6DD', '/detail')
  , ('2016-10-01 17:00:00', '2bGs3i', '1CwlSX', '/top'   )
  , ('2016-10-01 18:00:00', '2is8PX', '7Dn99b', '/search')
  , ('2016-10-02 12:00:00', '2mmGwD', 'EFnoNR', '/top'   )
  , ('2016-10-02 13:00:00', '2mmGwD', 'EFnoNR', '/detail')
  , ('2016-10-02 14:00:00', '3CEHe1', 'FGkTe9', '/search')
  , ('2016-10-02 15:00:00', '3Gv8vO', '1CwlSX', '/detail')
  , ('2016-10-02 16:00:00', '3cv4gm', 'KBlKgT', '/top'   )
  , ('2016-10-02 17:00:00', '3cv4gm', 'KBlKgT', '/search')
  , ('2016-10-02 18:00:00', '690mvB', 'FGkTe9', '/top'   )
  , ('2016-10-03 12:00:00', '6oABhM', '3JMO2k', '/detail')
  , ('2016-10-03 13:00:00', '7jjxQX', 'KKTw9P', '/top'   )
  , ('2016-10-03 14:00:00', 'AAuoEU', '6SN6DD', '/top'   )
  , ('2016-10-03 15:00:00', 'AAuoEU', '6SN6DD', '/search')
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('0CVKaz', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('1QceiB', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1hI43A', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
;


DROP TABLE IF EXISTS neighbor_pref; 
CREATE TABLE neighbor_pref(
    pref_id             integer
  , pref_name           varchar(255)
  , neighbor_pref_id    integer
  , neighbor_pref_name  varchar(255)
);

INSERT INTO neighbor_pref
VALUES
    (1, '北海道', 2, '青森県')
  , (2, '青森県', 1, '北海道')
  , (2, '青森県', 3, '岩手県')
  , (2, '青森県', 5, '秋田県')
  , (3, '岩手県', 2, '青森県')
  , (3, '岩手県', 4, '宮城県')
  , (3, '岩手県', 5, '秋田県')
;

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
    rsv_id            integer
  , stamp             varchar(255)
  , member_id         integer
  , member_pref_id    integer
  , member_pref_name  varchar(255)
  , spot_id           integer
  , spot_pref_id      integer
  , spot_pref_name    varchar(255)
);

INSERT INTO reservations
VALUES
    (27414, '2016-12-31 07:36:48', 50063, 21, '岐阜県', 4454, 47, '沖縄県')
  , (27415, '2016-12-31 15:34:21', 43065, 19, '山梨県', 4899, 27, '大阪府')
  , (27416, '2016-12-31 16:05:10', 31038, 6 , '山形県', 7839, 15, '新潟県')
  , (27417, '2016-12-31 17:48:57', 53901, 34, '広島県', 1972, 4 , '宮城県')
  , (27418, '2016-12-31 23:24:33', 54998, 12, '千葉県', 2227, 3 , '岩手県')
  , (27419, '2017-01-01 02:43:20', 34078, 47, '沖縄県', 5522, 12, '千葉県')
  , (27420, '2017-01-01 05:06:10', 53307, 26, '京都府', 6559, 12, '千葉県')
  , (27421, '2017-01-01 08:37:36', 35423, 24, '三重県', 5500, 20, '長野県')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO access_log
VALUES
    ('98900e', 'U001', 'view', '2015-01-01 18:00:00')
  , ('98900e', 'U001', 'view', '2015-01-02 20:00:00')
  , ('98900e', 'U001', 'view', '2015-01-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-04 23:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-05 00:30:00')
  , ('1cf768', 'U002', 'view', '2015-01-06 02:30:00')
  , ('87b575', 'U001', 'view', '2015-01-07 03:30:00')
  , ('87b575', 'U001', 'view', '2015-01-08 04:00:00')
  , ('87b575', 'U001', 'view', '2015-01-09 12:00:00')
  , ('eee2b2', 'U002', 'view', '2015-01-10 13:00:00')
  , ('eee2b2', 'U001', 'view', '2015-01-11 15:00:00')
;


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log
VALUES
    ('98900e', 'U001', 'view', '2016-11-03 18:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 20:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-03 23:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 00:30:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 02:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 03:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 04:00:00')
  , ('87b575', 'U001', 'view', '2016-11-04 12:00:00')
  , ('eee2b2', 'U002', 'view', '2016-11-04 13:00:00')
  , ('eee2b2', 'U001', 'view', '2016-11-04 15:00:00')
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
  ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
, ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
, ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
    ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
  , ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
  , ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS invalid_action_log;
CREATE TABLE invalid_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , category  varchar(255)
  , products  varchar(255)
  , amount    integer
);

INSERT INTO invalid_action_log
VALUES
    ('2016-11-03 18:10:00', '0CVKaz', 'U001', 'purchase', 'drama' , 'D001,D002', 2000)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'favorite', 'drama' , 'D001'     , NULL)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'view'    , NULL    , NULL       , NULL)
  , ('2016-11-03 18:01:00', '0CVKaz', 'U001', 'add_cart', 'drama' , 'D002'     , NULL)
  , ('2016-11-03 18:02:00', '0CVKaz', 'U001', 'add_cart', 'drama' , NULL       , NULL)
  , ('2016-11-04 13:00:00', '1QceiB', 'U002', 'purchase', 'drama' , 'D002'     , 1000)
  , (NULL                 , '1QceiB', 'U002', 'purchase', 'action', 'A005,A006', 1000)
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('989004ea', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('47db0370', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1cf7678e', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
  , ('5eb2e107', 'U004', 'view', '127.0.0.1'     , '2016-11-03 21:00:00')
  , ('fe05e1d8', 'U001', 'view', '216.58.220.238', '2016-11-04 18:00:00')
  , ('87b5725f', 'U005', 'view', '10.0.0.3'      , '2016-11-04 19:00:00')
  , ('5d5b0997', 'U006', 'view', '172.16.0.5'    , '2016-11-04 20:00:00')
  , ('111f2996', 'U007', 'view', '192.168.0.23'  , '2016-11-04 21:00:00')
  , ('3efe001c', 'U008', 'view', '192.0.0.10'    , '2016-11-04 22:00:00')
;


DROP TABLE IF EXISTS mst_categories;
CREATE TABLE mst_categories(
    id     integer
  , name   varchar(255)
  , stamp  varchar(255)
);

INSERT INTO mst_categories
VALUES
    (1, 'ladys_fashion', '2016-01-01 10:00:00')
  , (2, 'mens_fashion' , '2016-01-01 10:00:00')
  , (3, 'book'         , '2016-01-01 10:00:00')
  , (4, 'game'         , '2016-01-01 10:00:00')
  , (5, 'dvd'          , '2016-01-01 10:00:00')
  , (6, 'food'         , '2016-01-01 10:00:00')
  , (7, 'supplement'   , '2016-01-01 10:00:00')
  , (6, 'cooking'      , '2016-02-01 10:00:00')
;


DROP TABLE IF EXISTS dup_action_log;
CREATE TABLE dup_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , products  varchar(255)
);

INSERT INTO dup_action_log
VALUES
    ('2016-11-03 18:00:00', '989004ea', 'U001', 'click', 'D001')
  , ('2016-11-03 19:00:00', '47db0370', 'U002', 'click', 'D002')
  , ('2016-11-03 20:00:00', '1cf7678e', 'U003', 'click', 'A001')
  , ('2016-11-03 21:00:00', '5eb2e107', 'U004', 'click', 'A001')
  , ('2016-11-03 21:00:00', 'fe05e1d8', 'U004', 'click', 'D001')
  , ('2016-11-04 18:00:00', '87b5725f', 'U001', 'click', 'D001')
  , ('2016-11-04 19:00:00', 'eee2bb21', 'U005', 'click', 'A001')
  , ('2016-11-04 20:00:00', '5d5b0997', 'U006', 'click', 'D001')
  , ('2016-11-04 21:00:00', '111f2996', 'U007', 'click', 'D002')
  , ('2016-11-04 22:00:00', '3efe001c', 'U008', 'click', 'A001')
  , ('2016-11-04 22:00:10', '3efe001c', 'U008', 'click', 'A001')
;


DROP TABLE IF EXISTS mst_products_20161201;
CREATE TABLE mst_products_20161201(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20161201
VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B001', 'BBB', 500, '2016-11-03 20:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 400, '2016-11-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
;

DROP TABLE IF EXISTS mst_products_20170101;
CREATE TABLE mst_products_20170101(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20170101
  VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 500, '2016-12-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
  , ('D002', 'DAD', 500, '2016-12-04 19:00:00')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp          varchar(255)
  , short_session  varchar(255)
  , long_session   varchar(255)
  , path           varchar(255)
);

INSERT INTO access_log
VALUES
    ('2016-10-01 12:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '1QceiB', '3JMO2k', '/search')
  , ('2016-10-01 14:00:00', '1QceiB', '3JMO2k', '/detail')
  , ('2016-10-01 15:00:00', '1hI43A', '6SN6DD', '/search')
  , ('2016-10-01 16:00:00', '1hI43A', '6SN6DD', '/detail')
  , ('2016-10-01 17:00:00', '2bGs3i', '1CwlSX', '/top'   )
  , ('2016-10-01 18:00:00', '2is8PX', '7Dn99b', '/search')
  , ('2016-10-02 12:00:00', '2mmGwD', 'EFnoNR', '/top'   )
  , ('2016-10-02 13:00:00', '2mmGwD', 'EFnoNR', '/detail')
  , ('2016-10-02 14:00:00', '3CEHe1', 'FGkTe9', '/search')
  , ('2016-10-02 15:00:00', '3Gv8vO', '1CwlSX', '/detail')
  , ('2016-10-02 16:00:00', '3cv4gm', 'KBlKgT', '/top'   )
  , ('2016-10-02 17:00:00', '3cv4gm', 'KBlKgT', '/search')
  , ('2016-10-02 18:00:00', '690mvB', 'FGkTe9', '/top'   )
  , ('2016-10-03 12:00:00', '6oABhM', '3JMO2k', '/detail')
  , ('2016-10-03 13:00:00', '7jjxQX', 'KKTw9P', '/top'   )
  , ('2016-10-03 14:00:00', 'AAuoEU', '6SN6DD', '/top'   )
  , ('2016-10-03 15:00:00', 'AAuoEU', '6SN6DD', '/search')
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('0CVKaz', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('1QceiB', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1hI43A', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
;


DROP TABLE IF EXISTS neighbor_pref; 
CREATE TABLE neighbor_pref(
    pref_id             integer
  , pref_name           varchar(255)
  , neighbor_pref_id    integer
  , neighbor_pref_name  varchar(255)
);

INSERT INTO neighbor_pref
VALUES
    (1, '北海道', 2, '青森県')
  , (2, '青森県', 1, '北海道')
  , (2, '青森県', 3, '岩手県')
  , (2, '青森県', 5, '秋田県')
  , (3, '岩手県', 2, '青森県')
  , (3, '岩手県', 4, '宮城県')
  , (3, '岩手県', 5, '秋田県')
;

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
    rsv_id            integer
  , stamp             varchar(255)
  , member_id         integer
  , member_pref_id    integer
  , member_pref_name  varchar(255)
  , spot_id           integer
  , spot_pref_id      integer
  , spot_pref_name    varchar(255)
);

INSERT INTO reservations
VALUES
    (27414, '2016-12-31 07:36:48', 50063, 21, '岐阜県', 4454, 47, '沖縄県')
  , (27415, '2016-12-31 15:34:21', 43065, 19, '山梨県', 4899, 27, '大阪府')
  , (27416, '2016-12-31 16:05:10', 31038, 6 , '山形県', 7839, 15, '新潟県')
  , (27417, '2016-12-31 17:48:57', 53901, 34, '広島県', 1972, 4 , '宮城県')
  , (27418, '2016-12-31 23:24:33', 54998, 12, '千葉県', 2227, 3 , '岩手県')
  , (27419, '2017-01-01 02:43:20', 34078, 47, '沖縄県', 5522, 12, '千葉県')
  , (27420, '2017-01-01 05:06:10', 53307, 26, '京都府', 6559, 12, '千葉県')
  , (27421, '2017-01-01 08:37:36', 35423, 24, '三重県', 5500, 20, '長野県')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO access_log
VALUES
    ('98900e', 'U001', 'view', '2015-01-01 18:00:00')
  , ('98900e', 'U001', 'view', '2015-01-02 20:00:00')
  , ('98900e', 'U001', 'view', '2015-01-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-04 23:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-05 00:30:00')
  , ('1cf768', 'U002', 'view', '2015-01-06 02:30:00')
  , ('87b575', 'U001', 'view', '2015-01-07 03:30:00')
  , ('87b575', 'U001', 'view', '2015-01-08 04:00:00')
  , ('87b575', 'U001', 'view', '2015-01-09 12:00:00')
  , ('eee2b2', 'U002', 'view', '2015-01-10 13:00:00')
  , ('eee2b2', 'U001', 'view', '2015-01-11 15:00:00')
;


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log
VALUES
    ('98900e', 'U001', 'view', '2016-11-03 18:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 20:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-03 23:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 00:30:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 02:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 03:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 04:00:00')
  , ('87b575', 'U001', 'view', '2016-11-04 12:00:00')
  , ('eee2b2', 'U002', 'view', '2016-11-04 13:00:00')
  , ('eee2b2', 'U001', 'view', '2016-11-04 15:00:00')
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
  ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
, ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
, ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
    ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
  , ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
  , ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS invalid_action_log;
CREATE TABLE invalid_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , category  varchar(255)
  , products  varchar(255)
  , amount    integer
);

INSERT INTO invalid_action_log
VALUES
    ('2016-11-03 18:10:00', '0CVKaz', 'U001', 'purchase', 'drama' , 'D001,D002', 2000)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'favorite', 'drama' , 'D001'     , NULL)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'view'    , NULL    , NULL       , NULL)
  , ('2016-11-03 18:01:00', '0CVKaz', 'U001', 'add_cart', 'drama' , 'D002'     , NULL)
  , ('2016-11-03 18:02:00', '0CVKaz', 'U001', 'add_cart', 'drama' , NULL       , NULL)
  , ('2016-11-04 13:00:00', '1QceiB', 'U002', 'purchase', 'drama' , 'D002'     , 1000)
  , (NULL                 , '1QceiB', 'U002', 'purchase', 'action', 'A005,A006', 1000)
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('989004ea', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('47db0370', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1cf7678e', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
  , ('5eb2e107', 'U004', 'view', '127.0.0.1'     , '2016-11-03 21:00:00')
  , ('fe05e1d8', 'U001', 'view', '216.58.220.238', '2016-11-04 18:00:00')
  , ('87b5725f', 'U005', 'view', '10.0.0.3'      , '2016-11-04 19:00:00')
  , ('5d5b0997', 'U006', 'view', '172.16.0.5'    , '2016-11-04 20:00:00')
  , ('111f2996', 'U007', 'view', '192.168.0.23'  , '2016-11-04 21:00:00')
  , ('3efe001c', 'U008', 'view', '192.0.0.10'    , '2016-11-04 22:00:00')
;


DROP TABLE IF EXISTS mst_categories;
CREATE TABLE mst_categories(
    id     integer
  , name   varchar(255)
  , stamp  varchar(255)
);

INSERT INTO mst_categories
VALUES
    (1, 'ladys_fashion', '2016-01-01 10:00:00')
  , (2, 'mens_fashion' , '2016-01-01 10:00:00')
  , (3, 'book'         , '2016-01-01 10:00:00')
  , (4, 'game'         , '2016-01-01 10:00:00')
  , (5, 'dvd'          , '2016-01-01 10:00:00')
  , (6, 'food'         , '2016-01-01 10:00:00')
  , (7, 'supplement'   , '2016-01-01 10:00:00')
  , (6, 'cooking'      , '2016-02-01 10:00:00')
;


DROP TABLE IF EXISTS dup_action_log;
CREATE TABLE dup_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , products  varchar(255)
);

INSERT INTO dup_action_log
VALUES
    ('2016-11-03 18:00:00', '989004ea', 'U001', 'click', 'D001')
  , ('2016-11-03 19:00:00', '47db0370', 'U002', 'click', 'D002')
  , ('2016-11-03 20:00:00', '1cf7678e', 'U003', 'click', 'A001')
  , ('2016-11-03 21:00:00', '5eb2e107', 'U004', 'click', 'A001')
  , ('2016-11-03 21:00:00', 'fe05e1d8', 'U004', 'click', 'D001')
  , ('2016-11-04 18:00:00', '87b5725f', 'U001', 'click', 'D001')
  , ('2016-11-04 19:00:00', 'eee2bb21', 'U005', 'click', 'A001')
  , ('2016-11-04 20:00:00', '5d5b0997', 'U006', 'click', 'D001')
  , ('2016-11-04 21:00:00', '111f2996', 'U007', 'click', 'D002')
  , ('2016-11-04 22:00:00', '3efe001c', 'U008', 'click', 'A001')
  , ('2016-11-04 22:00:10', '3efe001c', 'U008', 'click', 'A001')
;


DROP TABLE IF EXISTS mst_products_20161201;
CREATE TABLE mst_products_20161201(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20161201
VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B001', 'BBB', 500, '2016-11-03 20:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 400, '2016-11-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
;

DROP TABLE IF EXISTS mst_products_20170101;
CREATE TABLE mst_products_20170101(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20170101
  VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 500, '2016-12-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
  , ('D002', 'DAD', 500, '2016-12-04 19:00:00')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp          varchar(255)
  , short_session  varchar(255)
  , long_session   varchar(255)
  , path           varchar(255)
);

INSERT INTO access_log
VALUES
    ('2016-10-01 12:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '1QceiB', '3JMO2k', '/search')
  , ('2016-10-01 14:00:00', '1QceiB', '3JMO2k', '/detail')
  , ('2016-10-01 15:00:00', '1hI43A', '6SN6DD', '/search')
  , ('2016-10-01 16:00:00', '1hI43A', '6SN6DD', '/detail')
  , ('2016-10-01 17:00:00', '2bGs3i', '1CwlSX', '/top'   )
  , ('2016-10-01 18:00:00', '2is8PX', '7Dn99b', '/search')
  , ('2016-10-02 12:00:00', '2mmGwD', 'EFnoNR', '/top'   )
  , ('2016-10-02 13:00:00', '2mmGwD', 'EFnoNR', '/detail')
  , ('2016-10-02 14:00:00', '3CEHe1', 'FGkTe9', '/search')
  , ('2016-10-02 15:00:00', '3Gv8vO', '1CwlSX', '/detail')
  , ('2016-10-02 16:00:00', '3cv4gm', 'KBlKgT', '/top'   )
  , ('2016-10-02 17:00:00', '3cv4gm', 'KBlKgT', '/search')
  , ('2016-10-02 18:00:00', '690mvB', 'FGkTe9', '/top'   )
  , ('2016-10-03 12:00:00', '6oABhM', '3JMO2k', '/detail')
  , ('2016-10-03 13:00:00', '7jjxQX', 'KKTw9P', '/top'   )
  , ('2016-10-03 14:00:00', 'AAuoEU', '6SN6DD', '/top'   )
  , ('2016-10-03 15:00:00', 'AAuoEU', '6SN6DD', '/search')
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('0CVKaz', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('1QceiB', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1hI43A', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
;


DROP TABLE IF EXISTS neighbor_pref; 
CREATE TABLE neighbor_pref(
    pref_id             integer
  , pref_name           varchar(255)
  , neighbor_pref_id    integer
  , neighbor_pref_name  varchar(255)
);

INSERT INTO neighbor_pref
VALUES
    (1, '北海道', 2, '青森県')
  , (2, '青森県', 1, '北海道')
  , (2, '青森県', 3, '岩手県')
  , (2, '青森県', 5, '秋田県')
  , (3, '岩手県', 2, '青森県')
  , (3, '岩手県', 4, '宮城県')
  , (3, '岩手県', 5, '秋田県')
;

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
    rsv_id            integer
  , stamp             varchar(255)
  , member_id         integer
  , member_pref_id    integer
  , member_pref_name  varchar(255)
  , spot_id           integer
  , spot_pref_id      integer
  , spot_pref_name    varchar(255)
);

INSERT INTO reservations
VALUES
    (27414, '2016-12-31 07:36:48', 50063, 21, '岐阜県', 4454, 47, '沖縄県')
  , (27415, '2016-12-31 15:34:21', 43065, 19, '山梨県', 4899, 27, '大阪府')
  , (27416, '2016-12-31 16:05:10', 31038, 6 , '山形県', 7839, 15, '新潟県')
  , (27417, '2016-12-31 17:48:57', 53901, 34, '広島県', 1972, 4 , '宮城県')
  , (27418, '2016-12-31 23:24:33', 54998, 12, '千葉県', 2227, 3 , '岩手県')
  , (27419, '2017-01-01 02:43:20', 34078, 47, '沖縄県', 5522, 12, '千葉県')
  , (27420, '2017-01-01 05:06:10', 53307, 26, '京都府', 6559, 12, '千葉県')
  , (27421, '2017-01-01 08:37:36', 35423, 24, '三重県', 5500, 20, '長野県')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO access_log
VALUES
    ('98900e', 'U001', 'view', '2015-01-01 18:00:00')
  , ('98900e', 'U001', 'view', '2015-01-02 20:00:00')
  , ('98900e', 'U001', 'view', '2015-01-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-04 23:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-05 00:30:00')
  , ('1cf768', 'U002', 'view', '2015-01-06 02:30:00')
  , ('87b575', 'U001', 'view', '2015-01-07 03:30:00')
  , ('87b575', 'U001', 'view', '2015-01-08 04:00:00')
  , ('87b575', 'U001', 'view', '2015-01-09 12:00:00')
  , ('eee2b2', 'U002', 'view', '2015-01-10 13:00:00')
  , ('eee2b2', 'U001', 'view', '2015-01-11 15:00:00')
;


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log
VALUES
    ('98900e', 'U001', 'view', '2016-11-03 18:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 20:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-03 23:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 00:30:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 02:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 03:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 04:00:00')
  , ('87b575', 'U001', 'view', '2016-11-04 12:00:00')
  , ('eee2b2', 'U002', 'view', '2016-11-04 13:00:00')
  , ('eee2b2', 'U001', 'view', '2016-11-04 15:00:00')
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
  ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
, ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
, ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
    ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
  , ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
  , ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS invalid_action_log;
CREATE TABLE invalid_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , category  varchar(255)
  , products  varchar(255)
  , amount    integer
);

INSERT INTO invalid_action_log
VALUES
    ('2016-11-03 18:10:00', '0CVKaz', 'U001', 'purchase', 'drama' , 'D001,D002', 2000)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'favorite', 'drama' , 'D001'     , NULL)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'view'    , NULL    , NULL       , NULL)
  , ('2016-11-03 18:01:00', '0CVKaz', 'U001', 'add_cart', 'drama' , 'D002'     , NULL)
  , ('2016-11-03 18:02:00', '0CVKaz', 'U001', 'add_cart', 'drama' , NULL       , NULL)
  , ('2016-11-04 13:00:00', '1QceiB', 'U002', 'purchase', 'drama' , 'D002'     , 1000)
  , (NULL                 , '1QceiB', 'U002', 'purchase', 'action', 'A005,A006', 1000)
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('989004ea', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('47db0370', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1cf7678e', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
  , ('5eb2e107', 'U004', 'view', '127.0.0.1'     , '2016-11-03 21:00:00')
  , ('fe05e1d8', 'U001', 'view', '216.58.220.238', '2016-11-04 18:00:00')
  , ('87b5725f', 'U005', 'view', '10.0.0.3'      , '2016-11-04 19:00:00')
  , ('5d5b0997', 'U006', 'view', '172.16.0.5'    , '2016-11-04 20:00:00')
  , ('111f2996', 'U007', 'view', '192.168.0.23'  , '2016-11-04 21:00:00')
  , ('3efe001c', 'U008', 'view', '192.0.0.10'    , '2016-11-04 22:00:00')
;


DROP TABLE IF EXISTS mst_categories;
CREATE TABLE mst_categories(
    id     integer
  , name   varchar(255)
  , stamp  varchar(255)
);

INSERT INTO mst_categories
VALUES
    (1, 'ladys_fashion', '2016-01-01 10:00:00')
  , (2, 'mens_fashion' , '2016-01-01 10:00:00')
  , (3, 'book'         , '2016-01-01 10:00:00')
  , (4, 'game'         , '2016-01-01 10:00:00')
  , (5, 'dvd'          , '2016-01-01 10:00:00')
  , (6, 'food'         , '2016-01-01 10:00:00')
  , (7, 'supplement'   , '2016-01-01 10:00:00')
  , (6, 'cooking'      , '2016-02-01 10:00:00')
;


DROP TABLE IF EXISTS dup_action_log;
CREATE TABLE dup_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , products  varchar(255)
);

INSERT INTO dup_action_log
VALUES
    ('2016-11-03 18:00:00', '989004ea', 'U001', 'click', 'D001')
  , ('2016-11-03 19:00:00', '47db0370', 'U002', 'click', 'D002')
  , ('2016-11-03 20:00:00', '1cf7678e', 'U003', 'click', 'A001')
  , ('2016-11-03 21:00:00', '5eb2e107', 'U004', 'click', 'A001')
  , ('2016-11-03 21:00:00', 'fe05e1d8', 'U004', 'click', 'D001')
  , ('2016-11-04 18:00:00', '87b5725f', 'U001', 'click', 'D001')
  , ('2016-11-04 19:00:00', 'eee2bb21', 'U005', 'click', 'A001')
  , ('2016-11-04 20:00:00', '5d5b0997', 'U006', 'click', 'D001')
  , ('2016-11-04 21:00:00', '111f2996', 'U007', 'click', 'D002')
  , ('2016-11-04 22:00:00', '3efe001c', 'U008', 'click', 'A001')
  , ('2016-11-04 22:00:10', '3efe001c', 'U008', 'click', 'A001')
;


DROP TABLE IF EXISTS mst_products_20161201;
CREATE TABLE mst_products_20161201(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20161201
VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B001', 'BBB', 500, '2016-11-03 20:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 400, '2016-11-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
;

DROP TABLE IF EXISTS mst_products_20170101;
CREATE TABLE mst_products_20170101(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20170101
  VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 500, '2016-12-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
  , ('D002', 'DAD', 500, '2016-12-04 19:00:00')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp          varchar(255)
  , short_session  varchar(255)
  , long_session   varchar(255)
  , path           varchar(255)
);

INSERT INTO access_log
VALUES
    ('2016-10-01 12:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '1QceiB', '3JMO2k', '/search')
  , ('2016-10-01 14:00:00', '1QceiB', '3JMO2k', '/detail')
  , ('2016-10-01 15:00:00', '1hI43A', '6SN6DD', '/search')
  , ('2016-10-01 16:00:00', '1hI43A', '6SN6DD', '/detail')
  , ('2016-10-01 17:00:00', '2bGs3i', '1CwlSX', '/top'   )
  , ('2016-10-01 18:00:00', '2is8PX', '7Dn99b', '/search')
  , ('2016-10-02 12:00:00', '2mmGwD', 'EFnoNR', '/top'   )
  , ('2016-10-02 13:00:00', '2mmGwD', 'EFnoNR', '/detail')
  , ('2016-10-02 14:00:00', '3CEHe1', 'FGkTe9', '/search')
  , ('2016-10-02 15:00:00', '3Gv8vO', '1CwlSX', '/detail')
  , ('2016-10-02 16:00:00', '3cv4gm', 'KBlKgT', '/top'   )
  , ('2016-10-02 17:00:00', '3cv4gm', 'KBlKgT', '/search')
  , ('2016-10-02 18:00:00', '690mvB', 'FGkTe9', '/top'   )
  , ('2016-10-03 12:00:00', '6oABhM', '3JMO2k', '/detail')
  , ('2016-10-03 13:00:00', '7jjxQX', 'KKTw9P', '/top'   )
  , ('2016-10-03 14:00:00', 'AAuoEU', '6SN6DD', '/top'   )
  , ('2016-10-03 15:00:00', 'AAuoEU', '6SN6DD', '/search')
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('0CVKaz', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('1QceiB', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1hI43A', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
;


DROP TABLE IF EXISTS neighbor_pref; 
CREATE TABLE neighbor_pref(
    pref_id             integer
  , pref_name           varchar(255)
  , neighbor_pref_id    integer
  , neighbor_pref_name  varchar(255)
);

INSERT INTO neighbor_pref
VALUES
    (1, '北海道', 2, '青森県')
  , (2, '青森県', 1, '北海道')
  , (2, '青森県', 3, '岩手県')
  , (2, '青森県', 5, '秋田県')
  , (3, '岩手県', 2, '青森県')
  , (3, '岩手県', 4, '宮城県')
  , (3, '岩手県', 5, '秋田県')
;

DROP TABLE IF EXISTS reservations;
CREATE TABLE reservations(
    rsv_id            integer
  , stamp             varchar(255)
  , member_id         integer
  , member_pref_id    integer
  , member_pref_name  varchar(255)
  , spot_id           integer
  , spot_pref_id      integer
  , spot_pref_name    varchar(255)
);

INSERT INTO reservations
VALUES
    (27414, '2016-12-31 07:36:48', 50063, 21, '岐阜県', 4454, 47, '沖縄県')
  , (27415, '2016-12-31 15:34:21', 43065, 19, '山梨県', 4899, 27, '大阪府')
  , (27416, '2016-12-31 16:05:10', 31038, 6 , '山形県', 7839, 15, '新潟県')
  , (27417, '2016-12-31 17:48:57', 53901, 34, '広島県', 1972, 4 , '宮城県')
  , (27418, '2016-12-31 23:24:33', 54998, 12, '千葉県', 2227, 3 , '岩手県')
  , (27419, '2017-01-01 02:43:20', 34078, 47, '沖縄県', 5522, 12, '千葉県')
  , (27420, '2017-01-01 05:06:10', 53307, 26, '京都府', 6559, 12, '千葉県')
  , (27421, '2017-01-01 08:37:36', 35423, 24, '三重県', 5500, 20, '長野県')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO access_log
VALUES
    ('98900e', 'U001', 'view', '2015-01-01 18:00:00')
  , ('98900e', 'U001', 'view', '2015-01-02 20:00:00')
  , ('98900e', 'U001', 'view', '2015-01-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-04 23:00:00')
  , ('1cf768', 'U002', 'view', '2015-01-05 00:30:00')
  , ('1cf768', 'U002', 'view', '2015-01-06 02:30:00')
  , ('87b575', 'U001', 'view', '2015-01-07 03:30:00')
  , ('87b575', 'U001', 'view', '2015-01-08 04:00:00')
  , ('87b575', 'U001', 'view', '2015-01-09 12:00:00')
  , ('eee2b2', 'U002', 'view', '2015-01-10 13:00:00')
  , ('eee2b2', 'U001', 'view', '2015-01-11 15:00:00')
;


DROP TABLE IF EXISTS action_log;
CREATE TABLE action_log(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log
VALUES
    ('98900e', 'U001', 'view', '2016-11-03 18:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 20:00:00')
  , ('98900e', 'U001', 'view', '2016-11-03 22:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-03 23:00:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 00:30:00')
  , ('1cf768', 'U002', 'view', '2016-11-04 02:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 03:30:00')
  , ('87b575', 'U001', 'view', '2016-11-04 04:00:00')
  , ('87b575', 'U001', 'view', '2016-11-04 12:00:00')
  , ('eee2b2', 'U002', 'view', '2016-11-04 13:00:00')
  , ('eee2b2', 'U001', 'view', '2016-11-04 15:00:00')
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
  ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
, ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
, ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
, ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
, ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
, ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
, ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
, ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS action_log_with_noise;
CREATE TABLE action_log_with_noise(
    stamp       varchar(255)
  , session     varchar(255)
  , action      varchar(255)
  , products    varchar(255)
  , url         text
  , ip          varchar(255)
  , user_agent  text
);

INSERT INTO action_log_with_noise
VALUES
    ('2016-11-03 18:00:00', '1b700', 'view'    , ''    , 'http://www.example.com/detail?id=1', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'add_cart', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 19:00:00', '1b700', 'purchase', 'D001', 'http://www.example.com/detail?id=2', '98.139.183.24' , 'Mozilla/5.0 (compatible; Bingbot/2.0; +http://www.bing.com/bingbot.htm)'                                                 )
  , ('2016-11-03 20:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=3', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-03 21:00:00', '0fb22', 'view'    , ''    , 'http://www.example.com/detail?id=1', '210.154.149.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12' )
  , ('2016-11-04 18:00:00', 'fdb83', 'view'    , ''    , 'http://www.example.com/detail?id=2', '127.0.0.1'     , 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'       )
  , ('2016-11-04 19:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=3', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 20:00:00', 'fe8df', 'view'    , ''    , 'http://www.example.com/detail?id=1', '192.0.0.10'    , 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'            )
  , ('2016-11-04 21:00:00', '14bec', 'view'    , ''    , 'http://www.example.com/detail?id=2', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '14bec', 'add_cart', ''    , 'http://www.example.com/detail?id=3', '10.0.0.3'      , 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0'                                               )
  , ('2016-11-04 22:00:00', '694dd', 'view'    , ''    , 'http://www.example.com/detail?id=1', '172.16.0.5'    , ''                                                                                                                        )
  , ('2016-11-04 22:00:00', '7af12', 'view'    , ''    , 'http://www.example.com/detail?id=2', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'add_cart', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', '7af12', 'purchase', 'D002', 'http://www.example.com/detail?id=3', '192.168.0.23'  , 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36')
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', ''                                                                                                                        )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=1', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=4', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=2', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
  , ('2016-11-04 22:00:00', 'c33fb', 'view'    , ''    , 'http://www.example.com/detail?id=3', '216.58.220.238', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'                                                )
;


DROP TABLE IF EXISTS invalid_action_log;
CREATE TABLE invalid_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , category  varchar(255)
  , products  varchar(255)
  , amount    integer
);

INSERT INTO invalid_action_log
VALUES
    ('2016-11-03 18:10:00', '0CVKaz', 'U001', 'purchase', 'drama' , 'D001,D002', 2000)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'favorite', 'drama' , 'D001'     , NULL)
  , ('2016-11-03 18:00:00', '0CVKaz', 'U001', 'view'    , NULL    , NULL       , NULL)
  , ('2016-11-03 18:01:00', '0CVKaz', 'U001', 'add_cart', 'drama' , 'D002'     , NULL)
  , ('2016-11-03 18:02:00', '0CVKaz', 'U001', 'add_cart', 'drama' , NULL       , NULL)
  , ('2016-11-04 13:00:00', '1QceiB', 'U002', 'purchase', 'drama' , 'D002'     , 1000)
  , (NULL                 , '1QceiB', 'U002', 'purchase', 'action', 'A005,A006', 1000)
;


DROP TABLE IF EXISTS action_log_with_ip;
CREATE TABLE action_log_with_ip(
    session  varchar(255)
  , user_id  varchar(255)
  , action   varchar(255)
  , ip       varchar(255)
  , stamp    varchar(255)
);

INSERT INTO action_log_with_ip
VALUES
    ('989004ea', 'U001', 'view', '216.58.220.238', '2016-11-03 18:00:00')
  , ('47db0370', 'U002', 'view', '98.139.183.24' , '2016-11-03 19:00:00')
  , ('1cf7678e', 'U003', 'view', '210.154.149.63', '2016-11-03 20:00:00')
  , ('5eb2e107', 'U004', 'view', '127.0.0.1'     , '2016-11-03 21:00:00')
  , ('fe05e1d8', 'U001', 'view', '216.58.220.238', '2016-11-04 18:00:00')
  , ('87b5725f', 'U005', 'view', '10.0.0.3'      , '2016-11-04 19:00:00')
  , ('5d5b0997', 'U006', 'view', '172.16.0.5'    , '2016-11-04 20:00:00')
  , ('111f2996', 'U007', 'view', '192.168.0.23'  , '2016-11-04 21:00:00')
  , ('3efe001c', 'U008', 'view', '192.0.0.10'    , '2016-11-04 22:00:00')
;


DROP TABLE IF EXISTS mst_categories;
CREATE TABLE mst_categories(
    id     integer
  , name   varchar(255)
  , stamp  varchar(255)
);

INSERT INTO mst_categories
VALUES
    (1, 'ladys_fashion', '2016-01-01 10:00:00')
  , (2, 'mens_fashion' , '2016-01-01 10:00:00')
  , (3, 'book'         , '2016-01-01 10:00:00')
  , (4, 'game'         , '2016-01-01 10:00:00')
  , (5, 'dvd'          , '2016-01-01 10:00:00')
  , (6, 'food'         , '2016-01-01 10:00:00')
  , (7, 'supplement'   , '2016-01-01 10:00:00')
  , (6, 'cooking'      , '2016-02-01 10:00:00')
;


DROP TABLE IF EXISTS dup_action_log;
CREATE TABLE dup_action_log(
    stamp     varchar(255)
  , session   varchar(255)
  , user_id   varchar(255)
  , action    varchar(255)
  , products  varchar(255)
);

INSERT INTO dup_action_log
VALUES
    ('2016-11-03 18:00:00', '989004ea', 'U001', 'click', 'D001')
  , ('2016-11-03 19:00:00', '47db0370', 'U002', 'click', 'D002')
  , ('2016-11-03 20:00:00', '1cf7678e', 'U003', 'click', 'A001')
  , ('2016-11-03 21:00:00', '5eb2e107', 'U004', 'click', 'A001')
  , ('2016-11-03 21:00:00', 'fe05e1d8', 'U004', 'click', 'D001')
  , ('2016-11-04 18:00:00', '87b5725f', 'U001', 'click', 'D001')
  , ('2016-11-04 19:00:00', 'eee2bb21', 'U005', 'click', 'A001')
  , ('2016-11-04 20:00:00', '5d5b0997', 'U006', 'click', 'D001')
  , ('2016-11-04 21:00:00', '111f2996', 'U007', 'click', 'D002')
  , ('2016-11-04 22:00:00', '3efe001c', 'U008', 'click', 'A001')
  , ('2016-11-04 22:00:10', '3efe001c', 'U008', 'click', 'A001')
;


DROP TABLE IF EXISTS mst_products_20161201;
CREATE TABLE mst_products_20161201(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20161201
VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B001', 'BBB', 500, '2016-11-03 20:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 400, '2016-11-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
;

DROP TABLE IF EXISTS mst_products_20170101;
CREATE TABLE mst_products_20170101(
    product_id  varchar(255)
  , name        varchar(255)
  , price       integer
  , updated_at  varchar(255)
);

INSERT INTO mst_products_20170101
  VALUES
    ('A001', 'AAA', 300, '2016-11-03 18:00:00')
  , ('A002', 'AAB', 400, '2016-11-03 19:00:00')
  , ('B002', 'BBD', 300, '2016-11-03 21:00:00')
  , ('C001', 'CCA', 500, '2016-12-04 18:00:00')
  , ('D001', 'DAA', 500, '2016-11-04 19:00:00')
  , ('D002', 'DAD', 500, '2016-12-04 19:00:00')
;


DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log(
    stamp          varchar(255)
  , short_session  varchar(255)
  , long_session   varchar(255)
  , path           varchar(255)
);

INSERT INTO access_log
VALUES
    ('2016-10-01 12:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '0CVKaz', '1CwlSX', '/detail')
  , ('2016-10-01 13:00:00', '1QceiB', '3JMO2k', '/search')
  , ('2016-10-01 14:00:00', '1QceiB', '3JMO2k', '/detail')
  , ('2016-10-01 15:00:00', '1hI43A', '6SN6DD', '/search')
  , ('2016-10-01 16:00:00', '1hI43A', '6SN6DD', '/detail')
  , ('2016-10-01 17:00:00', '2bGs3i', '1CwlSX', '/top'   )
  , ('2016-10-01 18:00:00', '2is8PX', '7Dn99b', '/search')
  , ('2016-10-02 12:00:00', '2mmGwD', 'EFnoNR', '/top'   )
  , ('2016-10-02 13:00:00', '2mmGwD', 'EFnoNR', '/detail')
  , ('2016-10-02 14:00:00', '3CEHe1', 'FGkTe9', '/search')
  , ('2016-10-02 15:00:00', '3Gv8vO', '1CwlSX', '/detail')
  , ('2016-10-02 16:00:00', '3cv4gm', 'KBlKgT', '/top'   )
  , ('2016-10-02 17:00:00', '3cv4gm', 'KBlKgT', '/search')
  , ('2016-10-02 18:00:00', '690mvB', 'FGkTe9', '/top'   )
  , ('2016-10-03 12:00:00', '6oABhM', '3JMO2k', '/detail')
  , ('2016-10-03 13:00:00', '7jjxQX', 'KKTw9P', '/top'   )
  , ('2016-10-03 14:00:00', 'AAuoEU', '6SN6DD', '/top'   )
  , ('2016-10-03 15:00:00', 'AAuoEU', '6SN6DD', '/search')
;


